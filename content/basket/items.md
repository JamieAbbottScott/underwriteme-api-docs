## Items [/application/{applicationId}/basket/item]
Operations on Basket Items associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Add Item to Basket [POST]
+ Request Adding Item to not existing Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057"
            }

+ Response 404

+ Request Adding not existing Item to Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057"
            }

+ Response 404

+ Request Adding valid Item to Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057"
            }

+ Response 200

            {
                "items": [
                    {
                        "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"PLR",
                        "decision":{
                            "immediateCover":true,
                            "nonIndicative":false,
                            "type":"STANDARD"
                        },
                        "product":{
                            "id":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                            "referenceId":"pro-001",
                            "type":"TERM",
                            "coverBasis":"DECREASING",
                            "coverPeriod":10,
                            "coverAmount":110000,
                            "livesAssured":[
                                {
                                    "name":"John",
                                    "surname":"Doe",
                                    "refersTo":"4336"
                                }
                            ]
                        },
                        "quote":{
                            "state":"SUCCEEDED",
                            "date":"2015-01-01T00:00:00.000",
                            "premium":{
                                "from":9.84,
                                "to":9.84,
                                "lives":[
                                    {
                                        "refersTo":"4336"
                                    }
                                ]
                            },
                            "sumAssured":120000,
                            "commission":{
                                "initial":30.61,
                                "renewal":8.17,
                                "sacrifice":{
                                    "initial":0,
                                    "renewal":2.50
                                }
                            }
                        }
                    }
                ],
                "total":{
                    "premium":{
                        "from":9.84,
                        "to":9.84
                    },
                    "commission":{
                        "initial":30.61,
                        "renewal":8.17
                    }
                },
                "paymentBasis":"MONTHLY"
            }

### Remove All Items from Basket [DELETE]
+ Request Removing all Items from Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {}
