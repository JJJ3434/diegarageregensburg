class_schedule() = [
    details(
        [summary([
                translations[:monday][payload(:lang)]
                ": 5 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("8:45 - 10:00")
                li("16:15 - 17:30")
                li("17:30 - 18:45")
                li("18:45 - 20:00")
                li("20:00 - 21:15")
            ])
        ]
    )
    details(
        [summary([
                translations[:tuesday][payload(:lang)]
                ": 4 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("8:45 - 10:00")
                li("16:15 - 17:30")
                li("17:30 - 18:45")
                li("18:45 - 20:00")
            ])
        ]
    )
    details(
        [summary([
                translations[:wednesday][payload(:lang)]
                ": 3 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("8:45 - 10:00")
                li("17:30 - 18:45")
                li("18:45 - 20:00")
            ])
        ]
    )
    details(
        [summary([
                translations[:thrusday][payload(:lang)]
                ": 5 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("7:00 - 8:00")
                li("8:45 - 10:00")
                li("17:30 - 18:45")
                li("18:45 - 20:00")
                li("20:00 - 21:15")
            ])
        ]
    )
    details(
        [summary([
                translations[:friday][payload(:lang)]
                ": 3 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("8:45 - 10:00")
                li("16:15 - 17:30")
                li("17:30 - 18:45")
            ])
        ]
    )
    details(
        [summary([
                translations[:saturday][payload(:lang)]
                ": 4 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("10:00 - 11:15")
            ])
        ]
    )
    details(
        [summary([
                translations[:sunday][payload(:lang)]
                ": 2 "
                translations[:classes][payload(:lang)]
            ])
            ul([
                li("17:00 - 18:15")
                li("18:00 - 19:15")
            ])
        ]
    )
]
