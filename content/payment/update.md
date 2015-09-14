### Update existing Payment details for Provider Product [PUT]
+ Request Valid Payment. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount": {
                    "sortCode": "112233",
                    "number": "11223344",
                    "holders": [
                        { "refersTo": "existing-customer-id" }
                    ]
                },
                "paymentDays": [
                    {
                        "provider": "PLR",
                        "dayOfMonth": 1
                    }
                ],
                "startDates": [
                    {
                        "refersTo": "plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date": "2015-01-07"
                    }
                ]
            }

+ Response 200 (application/json)

            {
                "paymentDays": [
                    {
                        "dayOfMonth": 1,
                        "provider": "PLR"
                    }
                ],
                "startDates": [
                    {
                        "provider": "PLR",
                        "date": "2015-01-07",
                        "refersTo": "plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "productId": "0ea872c8-5ea2-4ef0-a824-08116dfb7c03"
                    }
                ],
                "bankAccount": {
                    "holders": [
                        {
                            "refersTo": "395"
                        }
                    ],
                    "sortCode": "112233",
                    "number": "11223344"
                }
            }

+ Request Not required payment day for provider. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount": {
                    "sortCode": "112233",
                    "number": "11223344",
                    "holders": [
                        { "refersTo": "existing-customer-id" }
                    ]
                },
                "paymentDays": [
                    {
                        "provider": "InsurerX",
                        "dayOfMonth": 1
                    }
                ],
                "startDates": [
                    {
                        "refersTo": "insurerx-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date": "2015-01-07"
                    }
                ]
            }

+ Response 400 (application/json)

            {
                "paymentDays": {
                    "errorMessage": "Payment days are not required"
                }
            }

+ Request wrong start dates offset. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount": {
                    "sortCode": "112233",
                    "number": "11223344",
                    "holders": [
                        { "refersTo": "existing-customer-id" }
                    ]
                },
                "paymentDays": [
                    {
                        "provider": "PLR",
                        "dayOfMonth": 1
                    }
                ],
                "startDates": [
                    {
                        "refersTo": "plr-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date": "2015-01-08"
                    }
                ]
            }

+ Response 400 (application/json)

             {
                "startDates": [
                    {
                        "date": {
                            "errorMessage": "Please supply a start date between  01/01/2015 and  07/01/2015"
                        },
                        "refersTo": "plr-9a86037f-f20e-4143-a1d9-b01eb69cfaa5"
                    }
                ]
            }

+ Request not required date. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount": {
                    "sortCode": "112233",
                    "number": "11223344",
                    "holders": [
                        { "refersTo": "existing-customer-id" }
                    ]
                },
                "paymentDays": [
                    {
                        "provider": "RL",
                        "dayOfMonth": 1
                    }
                ],
                "startDates": [
                    {
                        "refersTo": "rl-9a86037f-f20e-4143-a1d9-b01eb69cfaa5}",
                        "basis": "TO_BE_ADVISED",
                        "date": "2015-03-31"
                    }
                ]
            }

+ Response 400 (application/json)

             {
                 "startDates": {
                     "errorMessage": "Start dates are not required"
                 }
             }