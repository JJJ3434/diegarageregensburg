module App

using Genie, Genie.Renderer.Html, Genie.Requests
import Genie.Renderer.Html: div, summary
include("lib/translations.jl")
include("lib/class_schedule.jl")
include("lib/intro.jl")
using Intro

route("/message") do
    name = "John"
    h1("Welcome to Genie $name !")
end



template = """
<!doctype html>
<html lang="de">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="stylesheet" href="styles.css" />
    <link rel="icon" href="img/icon.png">
    <title>Die Garage Regensburg</title>
</head>

<body>

 
</body>


</html>
"""

footer_content = """
        <address>
            <div>
                <h2>Anschrift</h2>
                Die Garage Regensburg<br>
                Deischgasse 1<br>
                93047 Regensburg

                <h2>Inhaber</h2>
                Benjamin Bierl<br>
                Deischgasse 4<br>
                93047 Regensburg
            </div>
            <div>
                <h2>E-Mail</h2>

                <a href="mailto:bene.bierl@gmail.com">bene.bierl@gmail.com</a>

                <h2>Instagram</h2>
                <a href="https://www.instagram.com/diegarage_regensburgderfittebene/">@derfittebene</a><br>
                <a href="https://www.instagram.com/diegarage_regensburg/">@diegarage_regensburg</a>


                <h2>Telefon</h2>
                <a href="tel:+4915158895108">+49 15158895108</a>

            </div>
        </address>
        <nav>
            <a href="/Team">Team</a>
            <a href="/Impressum">Impressum</a>
            <a href="/Datenschutz">Datenschutz</a>
            <a href="/AGB">AGBs</a>
            <a href="/">Startseite</a>
        </nav>
"""

route("/") do
    redirect("/de")
end


route("/:lang") do
    [head([
            meta(charset="utf-8")
            meta(name="og:image", content="/img/meta.png")
            link(rel="stylesheet", href=("/style.css"))
            link(rel="icon", href="/favicon.svg", sizes="any", type="image/svg+xml")
            title("Including assets")
        ])
        body([
            h1(translations[:diegarage][payload(:lang)])
            hr()
            Intro.intro()
            hr()
            translations[:training][payload(:lang)]
            hr()
            class_schedule()
            hr()
            footer([address(
                    [
                        Html.div([
                            h2(translations[:adress][payload(:lang)])
                            "Die Garage Regensburg"
                            br()
                            "Deischgasse 1"
                            br()
                            "93047 Regensburg"
                        ])
                        Html.div([
                            h2(translations[:owner][payload(:lang)])
                            "Benjamin Bierl"
                            br()
                            "Deischgasse 1"
                            br()
                            "93047 Regensburg"
                        ])
                        Html.div([
                            h2("E-Mail")
                            a(href="mailto:bene.bierl@gmail.com", "bene.bierl@gmail.com")
                            h2("Instagram")
                            a(href="https://www.instagram.com/derfittebene/", "@derfittebene")
                            br()
                            a(href="https://www.instagram.com/diegarage_regensburg/", "@diegarage_regensburg")
                            h2(translations[:phone][payload(:lang)])
                            a(href="tel:+4915158895108", "+49 151 5889 5108")
                        ])]
                )
                nav([
                    a(href="/Team", "Team")
                    a(href="/Impressum", "Impressum")
                    a(href="/Datenschutz", "Datenschutz")
                    a(href="/AGB", "AGBs")
                    a(href="/", "Startseite")])
            ])
        ])]
end

end