### Update existing Payment [PUT]
+ Request Payment for Application with one Provider Product in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    }
                ]
            }

+ Response 200 (application/json)

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"****3344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"PLR",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    }
                ]
            }

+ Request Payment for Application with two Provider Products in the Basket. One of the Providers does not require payment day or start date. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":28
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    },
                    {
                        "refersTo":"insurerx-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "basis":"TO_BE_ADVISED"
                    }
                ]
            }

+ Response 200 (application/json)

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"****3344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":28
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"PLR",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    },
                    {
                        "refersTo":"insurerx-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "provider":"InsurerX",
                        "productId":"1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "basis":"TO_BE_ADVISED"
                    }
                ]
            }

+ Request Payment for Application with two Provider Products in the Basket. None of the Providers require payment day. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        },
                        {
                            "refersTo":"4321"
                        }
                    ]
                }
                "startDates":[
                    {
                        "refersTo":"insurerx-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    },
                    {
                        "refersTo":"insurerx-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "date":"2015-10-10"
                    }
                ]
            }

+ Response 200 (application/json)

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"****3344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        },
                        {
                            "refersTo":"4321"
                        }
                    ]
                }
                "startDates":[
                    {
                        "refersTo":"insurerx-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"InsurerX",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    },
                    {
                        "refersTo":"insurerx-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "provider":"InsurerX",
                        "productId":"1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "date":"2015-10-11"
                    }
                ]
            }

+ Request Rejected Payment. Provider does not require payment day. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"InsurerX",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"insurerx-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-01-07"
                    }
                ]
            }

+ Response 400 (application/json)

            {
                "paymentDays":{
                    "errorMessage":"Payment days are not required"
                }
            }

+ Request Rejected Payment. Invalid start date value. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date":"2015-01-08"
                    }
                ]
            }

+ Response 400 (application/json)

            {
                "startDates":[
                    {
                        "refersTo":"plr-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date":{
                            "errorMessage":"Please supply a start date between  01/01/2015 and  07/01/2015"
                        }
                    }
                ]
            }

+ Request Rejected Payment. Provider does not require start date. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"InsurerY",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"insurery-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date":"2015-03-31",
                        "basis":"TO_BE_ADVISED"
                    }
                ]
            }

+ Response 400 (application/json)

            {
               "startDates":{
                   "refersTo":"insurery-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                   "date":{
                       "errorMessage":"Value not required"
                   }
               }
            }

+ Request Payment for not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"InsurerY",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"insurery-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date":"2015-03-31"
                    }
                ]
            }

+ Response 404

+ Request Payment for Application with empty Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "bankAccount":{
                    "sortCode":"112233",
                    "number":"11223344",
                    "holders":[
                        {
                            "refersTo":"1234"
                        }
                    ]
                },
                "paymentDays":[
                    {
                        "provider":"InsurerY",
                        "dayOfMonth":1
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"insurery-9a86037f-f20e-4143-a1d9-b01eb69cfaa5",
                        "date":"2015-03-31"
                    }
                ]
            }

+ Response 404
