## Item [/application/{applicationId}/comparison/{comparisonId}]
Operations on single Comparison Item associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + comparisonId (required, string, `plr-2774498c-d0b8-4d40-8429-b00bf0fc0056`) ... Unique ID of existing Comparison Item.

### Retrieve Comparison Item [GET]
+ Request Single Comparison Item with unknown decision. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                    "type":"TERM"
                },
                "decision":{
                    "type":"UNKNOWN",
                    "details":[
                        {
                            "customer":{
                                "id":"4330"
                            },
                            "decisions":[
                                {
                                    "type":"UNKNOWN",
                                    "componentType":"LIFE"
                                }
                            ]
                        }
                    ]
                },
                "quote":{
                    "status":"RETRIEVED",
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
                },
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                },
                "id":"plr-eae35b32-4841-4620-aed4-d06cf1cf8057"
            }

+ Request Single Comparison Item with decline decision and no premium. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"bf8ac9c5-5d8e-4991-8028-8768eef2b94d",
                    "type":"CRITICAL_ILLNESS"
                },
                "decision":{
                    "type":"DECLINE",
                    "details":[
                        {
                            "customer":{
                                "id":"4333"
                            },
                            "decisions":[
                                {
                                    "type":"DECLINE",
                                    "componentType":"CI"
                                }
                            ]
                        }
                    ]
                },
                "id":"plr-bf8ac9c5-5d8e-4991-8028-8768eef2b94d"
            }

+ Request Single Comparison Item with refer decision and ranged premium. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"0fc0b51a-82ba-4508-838e-86aea8110a48",
                    "type":"TERM"
                },
                "decision":{
                    "type":"REFER",
                    "details":[
                        {
                            "customer":{
                                "id":"4335"
                            },
                            "decisions":[
                                {
                                    "type":"REFER",
                                    "componentType":"LIFE",
                                    "indicativeExtraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Rheumatoid Arthritis",
                                                "triggerTag":"Rheumatoid arthritis"
                                            },
                                            "value":{
                                                "from":150,
                                                "to":250
                                            }
                                        }
                                    ],
                                    "evidenceContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Rheumatoid Arthritis",
                                                "triggerTag":"Rheumatoid arthritis"
                                            },
                                            "value":[
                                                {
                                                    "code":"TGPR",
                                                    "description":"Targeted GP Report"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "quote":{
                    "status":"RETRIEVED",
                    "date":"2015-01-01T00:00:00.000",
                    "premium":{
                        "from":26.00,
                        "to":27.00
                    },
                    "sumAssured":120000,
                    "commission":{
                        "initial":80.86,
                        "renewal":21.58,
                        "sacrifice":{
                            "initial":0,
                            "renewal":2.50
                        }
                    }
                },
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                },
                "id":"plr-0fc0b51a-82ba-4508-838e-86aea8110a48"
            }

+ Request Single Comparison Item with standard decision and fixed premium. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"96402071-3646-4c75-b50a-f06586516fed",
                    "type":"TERM"
                },
                "decision":{
                    "type":"STANDARD",
                    "details":[
                        {
                            "customer":{
                                "id":"4336"
                            },
                            "decisions":[
                                {
                                    "type":"STANDARD",
                                    "componentType":"LIFE",
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma"
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading"
                                            },
                                            "value":{
                                                "sum":-25
                                            }
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "quote":{
                    "status":"RETRIEVED",
                    "date":"2015-01-01T00:00:00.000",
                    "premium":{
                        "from":10.26,
                        "to":10.26
                    },
                    "sumAssured":120000,
                    "commission":{
                        "initial":31.90,
                        "renewal":8.51,
                        "sacrifice":{
                            "initial":0,
                            "renewal":2.50
                        }
                    }
                },
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                },
                "id":"plr-96402071-3646-4c75-b50a-f06586516fed"
            }

+ Request Single Comparison Item with postpone decision and no premium. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"50418718-acb5-4b4e-a4e5-60cb4320f5d5",
                    "type":"TERM"
                },
                "decision":{
                    "type":"POSTPONE",
                    "details":[
                        {
                            "customer":{
                                "id":"4338"
                            },
                            "decisions":[
                                {
                                    "type":"POSTPONE",
                                    "componentType":"LIFE",
                                    "durationContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Rheumatoid Arthritis",
                                                "triggerTag":"Rheumatoid arthritis"
                                            },
                                            "value":[
                                                {
                                                    "code":"SURGERY",
                                                    "description":"Postpone until after surgery"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                },
                "id":"plr-50418718-acb5-4b4e-a4e5-60cb4320f5d5"
            }
