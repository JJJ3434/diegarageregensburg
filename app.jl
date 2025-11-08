using Genie, Genie.Renderer.Html, Genie.Requests

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

translations = Dict(
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :diegarage => Dict("de" => "Die Garage - Fitness in der Altstadt", "en" => "The Garage - Fitness in the oldtown"),
    :intro => Dict("de" => [
                p([
                    "Du hast Bock auf Training direkt um die Ecke in der Regensburger Altstadt?"
		    br()
                    "Angeleitet von sympathischen und top ausgebildetetn Coaches?"
		    br()
                    "Dann bist du bei uns richtig!"
		    ])
                p([
                    "Mein Name ist "
		    em("Benjamin Bierl ")
		    "und ich bin dein Coach im Altstadt-Gym "
		    em("Die Garage ")
		    "."
		    ])
                p([
                    "Ich biete derzeit angeleitetes "
		    em("Gruppentraining ")
		    "sowie "
		    em("Personaltraining ")
		    "in meinem Micro-Gym an. Auch "
		    em("Open Gym ")
		    "Zeiten werden angeboten. Die Kurse sind jeweils auf 10 Teilnehmer begrenzt."
		    ])
		p(
		  em("Bei uns macht Training wieder Spaß!")
		    )
		p(
                    "Melde dich hier bei mir:"
		    )
		]
           , 
	    "en" => [
	    p([
			"You are interested in training right in the oldtown of Ratisbona?"
			br()
			"Supervised by sympathic and professional Coaches?"
			br()
			"Then you found the right place!"
			])
	    p([
                    "I am "
		    em("Benjamin Bierl ")
		    "and i am your Coach in the oldtown-Gym "
		    em("Die Garage ")
		    "."
		    ])
	    p([
			"Currently i offer supervised "
			em("Group training ")
			"and "
			em("Personal Coaching ")
			"in my Micro-Gym. In "
			em("Open Gym ") 
			"sessions you can train on you own. The Courses are limited to a maximum of 10 people."
			])
	    p(em("Here with us training is fun again!"))
	    p("Contact me now:")
		]),
    :training => Dict("de" =>

		      [
		       p("Egal wie sportlich oder wie fit du bist, bei uns findest du deinen Platz um zu wachsen - physisch, aber auch mental. Gemeinsam arbeiten wir daran, dich auf ein höheres Fitnesslevel zu bringen und dir den Spaß an der Bewegung zu zeigen. Bei uns erwartet dich eine gleichgesinnte, diverse Community mit Mitgliedern aus allen Altersgruppen.")
		       p("Das Training besteht dabei aus Elementen der Funktionalen Fitness und bereitet dich auf die Herausforderungen des Alltags vor.")
		       p("Ziel des abwechslungsreichen Trainings ist es, Kraft aufzubauen, Beweglichkeit, Ausdauer und Belastungsfähigkeit zu verbessern. Wir trainieren in unserer Halle in der Deischgasse. Manchmal aber auch outdoor.")
		       ], "en" => [
		       p("No matter how fit you are, here you will find a place for growth - pysically, buy also mentally. Together we will work on getting you to the next level in fitness and also to show you the fun in moving. You will find a divers Community with various age groups with a common Goal.")
		       p("
The training consists of Elements of Funktoinal Fitness and will prepare you for the challengas of daily life.")
		       p("

We aim to offer a diverse Training to improve Resilience, by gaing strenght, mobility and conditioning.
Usually will train indoors in the gym but sometimes also outside.
")
		       ]

		     ),
    :contact_default => Dict("de" =>
"""Hallo Bene,
ich möchte fitter werden und mich für ein unverbindliches Probetraining in der Garage anmelden!

Viele Grüße
""", "en" => 
"""Hi Bene,
i want to get fitter and i'm interested in try out at the Garage!

Kind Regards
"""),
    :directions => Dict("de" => "Anfahrt", "en" => "Directions"),
    :message => Dict("de" => "Nachricht:", "en" => "Message:"),
    :send=> Dict("de" => "Absenden", "en" => "Send"),
    :contact => Dict("de" => "Kontakt", "en" => "Contact"),
    :group_classes => Dict("de" => "Kurszeiten", "en" => "Group classes"),
    :outdoor_training=> Dict("de" => p(" Im Sommer jeden Samstag um 10:00 Uhr. Kostenlos und bei jedem Wetter!") , "en" => p("During Summer every Saturday at 10:00 am. For free during every Weather!")),
    :monday=> Dict("de" => "Montag", "en" => "Monday"),
    :tuesday=> Dict("de" => "Dienstag", "en" => "Tuesday"),
    :wednesday => Dict("de" => "Mittwoch", "en" => "Wednesday"),
    :thrusday=> Dict("de" => "Donnerstag", "en" => "Thursday"),
    :friday=> Dict("de" => "Freitag", "en" => "Friday"),
    :saturday=> Dict("de" => "Samstag", "en" => "Saturday"),
    :sunday=> Dict("de" => "Sonntag", "en" => "Sunday"),

    :classes => Dict("de" => "Einheiten", "en" => "Classes"),
    :pricing_1 => Dict("de" =>
		   [
		    h2("Preise")
		    h3("Gruppentraining")

		    ul([
			li("Training im Gym in der Altstadt")
			li("Open Gym in jedem Vertrag inklusive")
			li("Online-Training inklusive (wenn angeboten)")
			li("Laufzeit: unbegrenzt ")
			li(em("1 Monat Kündigungsfrist"))
			])

		], "en" => [
		    h2("Pricing")
		    h3("Group Clasess")

		    ul([
			li("Training in the Gym within the old town")
			li("including Open Gym in every Tier")
			li("including Online training (when offered)")
			li("Unlimited runtime")
			li(em("1 Month Cancelation Period"))
			])
			    ]),

    :pricing_2 => Dict("de" =>"Privates Einzeltraining für 100€ pro Trainingseinheit (60 Minuten)." , "en" => "Personal Coaching for 100€ per Session.")

    :ten_session => Dict("de" => "10er-Karte", "en" => "10-session pass"),
    :month=> Dict("de" => "Monat", "en" => "month"),

    :flex_course_time => Dict("de" => "Kurszeiten richten sich nach den Bedürfnissen der Mitglieder und können dementsprechend angepasst werden.", "en" => "Class Schedule can be adjusted according to the needs of the Members"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),
    :template => Dict("de" => "Deutsch", "en" => "English"),

    :adress => Dict("de" => "Anschrift", "en" => "Adress"),
    :owner => Dict("de" => "Inhaber", "en" => "Owner"),
    :phone => Dict("de" => "Telefon", "en" => "Phone")
)

route("/:lang") do
    head([
        meta(charset="utf-8")
        meta(name="og:image", content="/img/meta.png")
        link(rel="stylesheet", href=("/style.css"))
        link(rel="icon", href="/favicon.svg", sizes="any", type="image/svg+xml")
        title("Including assets")
    ])
    body([
        translations[:intro][payload(:lang)]
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
    ])

end
