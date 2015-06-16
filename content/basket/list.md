## List [/application/{applicationId}/basket]
Operations on existing Basket associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Basket [GET]
+ Request Retrieve empty Basket (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {}

+ Request Retrieve Basket with one Item. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {
                "items":[
                    {
                        "id":"plr-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"PLR",
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
                                "to":9.84
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
                }
            }

+ Request Retrieve Basket with two Items. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {
                "items":[
                    {
                        "id":"plr-eae35b32-4841-4620-aed4-d06cf1cf8057",
                        "provider":"PLR",
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
                                "to":9.84
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
                    },
                    {
                        "id":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                        "provider":"InsurerX",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "referenceId":"pro-002",
                            "type":"CRITICAL_ILLNESS_WITH_LIFE_COVER",
                            "coverBasis":"DECREASING",
                            "coverPeriod":10,
                            "coverAmount":110000,
                            "premiumBasis":"GUARANTEED",
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
                                "from":30.14,
                                "to":30.14
                            },
                            "sumAssured":120000,
                            "commission":{
                                "initial":120.51,
                                "renewal":5.91,
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
                        "from":39.98,
                        "to":39.98
                    },
                    "commission":{
                        "initial":151.12,
                        "renewal":14.08
                    }
                }
            }
