### Retrieve existing Payment [GET]
+ Request Empty Payment for Application with one Provider Product in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "paymentDays":[
                    {
                        "provider":"PLR"
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"PLR",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03"
                    }
                ]
            }

+ Request Payment for Application with two Provider Products in the Basket. Only one of the Providers requires payment day. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                        "dayOfMonth":5
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
                        "refersTo":"insurerx-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"InsurerX",
                        "productId":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "basis":"TO_START_IMMEDIATELY"
                    }
                ]
            }

+ Request Payment for Application with one Provider Product in the Basket. Provider does not require payment day. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                "startDates":[
                    {
                        "refersTo":"plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"PLR",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date":"2015-10-10"
                    }
                ]
            }

+ Request Payment for Application with two Provider Products in the Basket. Both Provider Products are from the same Provider. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":4
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
                        "refersTo":"plr-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"PLR",
                        "productId":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "date":"2015-11-11"
                    }
                ]
            }

+ Request Payment for Application with two Provider Products in the Basket. Both Provider Products are from the same Provider. Provider does not require payment day. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                },
                "startDates":[
                    {
                        "refersTo":"insurerx-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider":"InsurerX",
                        "productId":"0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "basis":"TO_START_IMMEDIATELY"
                    },
                    {
                        "refersTo":"insurerx-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"InsurerX",
                        "productId":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "basis":"TO_BE_ADVISED"
                    }
                ]
            }

+ Request Payment for Application with two Provider Product in the Basket and bank account details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "bankAccount": {
                    "sortCode": "112233",
                    "number": "****3344",
                    "holders": [
                        { "refersTo": "1234" }
                    ]
                },
                "paymentDays": [
                    {
                        "provider": "PLR",
                        "dayOfMonth": 5
                    },
                    {
                        "provider": "InsurerX",
                        "dayOfMonth": 3
                    }
                ],
                "startDates": [
                    {
                        "refersTo": "plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "provider": "PLR",
                        "productId": "0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "date": "2015-10-10"
                    },
                    {
                        "refersTo": "insurerx-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider": "InsurerX",
                        "productId": "eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "basis": "TO_START_IMMEDIATELY"
                    }
                ]
            }

+ Request Payment for not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Payment for Application with empty Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
