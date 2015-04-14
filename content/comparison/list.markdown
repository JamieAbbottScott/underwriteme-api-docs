## List [/application/{applicationId}/comparison]
Operations on existing Comparison associated with Application.

Until all Enquiries are open Comparison contains only estimated decisions and quotes.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Comparison [GET]
+ Request Estimated Comparison with unknown decisions for new Application (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "estimated":true,
                "items":[
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"UNKNOWN",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4083"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":5,
                            "description":"<strong>Recommended</strong>"
                        },
                        "details":{
                            "keyFacts":"http://plr.com/term/key-facts.pdf",
                            "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                        },
                        "id":"plr-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    },
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"UNKNOWN",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4083"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":4,
                            "description":"Good"
                        },
                        "details":{
                            "keyFacts":"http://insurerx.com/term/key-facts.pdf"
                        },
                        "id":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    }
                ]
            }

+ Request Estimated Comparison with referred decisions for not-satisfied Enquiry (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "estimated":true,
                "items":[
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"REFER",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4084"
                                    },
                                    "decisions":[
                                        {
                                            "type":"STANDARD",
                                            "componentType":"LIFE",
                                            "extraMorbidityContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Family History Parkinsons Disease",
                                                        "triggerTag":"Family History Parkinsons Disease"
                                                    },
                                                    "value":{
                                                        "sum":50
                                                    }
                                                }
                                            ]
                                        },
                                        {
                                            "type":"REFER",
                                            "componentType":"WOP",
                                            "indicativeExclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Family History Parkinsons Disease",
                                                        "triggerTag":"Family History Parkinsons Disease"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXPAR",
                                                            "description":"No benefit will be payable under this policy for any claims arising from Parkinson's disease or any other form of movement disorder or degenerative disorder"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":5,
                            "description":"<strong>Recommended</strong>"
                        },
                        "details":{
                            "keyFacts":"http://plr.com/term/key-facts.pdf",
                            "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                        },
                        "id":"plr-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    },
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"REFER",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4084"
                                    },
                                    "decisions":[
                                        {
                                            "type":"REFER",
                                            "componentType":"LIFE",
                                            "extraMorbidityContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Family History Parkinsons Disease",
                                                        "triggerTag":"Family History Parkinsons Disease"
                                                    },
                                                    "value":{
                                                        "sum":50
                                                    }
                                                }
                                            ],
                                            "indicativePermilleContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Suicide",
                                                        "triggerTag":"Suicide attempt"
                                                    },
                                                    "value":{
                                                        "from":5,
                                                        "to":5
                                                    }
                                                }
                                            ],
                                            "evidenceContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Suicide",
                                                        "triggerTag":"Suicide attempt"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"TGPR",
                                                            "description":"Targeted GP Report"
                                                        }
                                                    ]
                                                }
                                            ]
                                        },
                                        {
                                            "type":"REFER",
                                            "componentType":"WOP",
                                            "indicativeExclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Family History Parkinsons Disease",
                                                        "triggerTag":"Family History Parkinsons Disease"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXPAR",
                                                            "description":"No benefit will be payable under this policy for any claims arising from Parkinson's disease or any other form of movement disorder or degenerative disorder"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":4,
                            "description":"Good"
                        },
                        "details":{
                            "keyFacts":"http://insurerx.com/term/key-facts.pdf"
                        },
                        "id":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    }
                ]
            }

+ Request Estimated Comparison with standard decisions for satisfied Enquiry (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "estimated":true,
                "items":[
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"STANDARD",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4085"
                                    },
                                    "decisions":[
                                        {
                                            "type":"STANDARD",
                                            "componentType":"LIFE",
                                            "extraMorbidityContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Arthritis",
                                                        "triggerTag":"Arthritis"
                                                    },
                                                    "value":{
                                                        "duration":"P3Y",
                                                        "sum":2
                                                    }
                                                }
                                            ],
                                            "permilleContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Arthritis",
                                                        "triggerTag":"Arthritis"
                                                    },
                                                    "value":{
                                                        "duration":"P1Y",
                                                        "sum":1
                                                    }
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        "quote":{
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":5,
                            "description":"<strong>Recommended</strong>"
                        },
                        "details":{
                            "keyFacts":"http://plr.com/term/key-facts.pdf",
                            "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                        },
                        "id":"plr-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    },
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"STANDARD",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4085"
                                    },
                                    "decisions":[
                                        {
                                            "type":"STANDARD",
                                            "componentType":"LIFE",
                                            "extraMorbidityContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Arthritis",
                                                        "triggerTag":"Arthritis"
                                                    },
                                                    "value":{
                                                        "sum":2
                                                    }
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        "quote":{
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":4,
                            "description":"Good"
                        },
                        "details":{
                            "keyFacts":"http://insurerx.com/term/key-facts.pdf"
                        },
                        "id":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    }
                ]
            }

+ Request Valid Comparison with standard decisions for satisfied and closed Enquiry (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "items":[
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"CRITICAL_ILLNESS_WITH_LIFE_COVER"
                        },
                        "decision":{
                            "type":"STANDARD",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4086"
                                    },
                                    "decisions":[
                                        {
                                            "type":"STANDARD",
                                            "componentType":"LIFE"
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"WOP",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXEYE",
                                                            "description":"No benefit will be payable under this policy for any claims arising from any disease or disorder of the eye including blindness"
                                                        }
                                                    ]
                                                }
                                            ]
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"TPD",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXEYE",
                                                            "description":"No benefit will be payable under this policy for any claims arising from any disease or disorder of the eye including blindness"
                                                        }
                                                    ]
                                                }
                                            ]
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"CI",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"CIRMBLI",
                                                            "description":"Blindness is removed as an insured condition"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":5,
                            "description":"<strong>Recommended</strong>"
                        },
                        "details":{
                            "keyFacts":"http://plr.com/ci/key-facts.pdf",
                            "termsAndConditions":"http://plr.com/ci/terms-and-conditions.pdf"
                        },
                        "id":"plr-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    },
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                            "type":"CRITICAL_ILLNESS_WITH_LIFE_COVER"
                        },
                        "decision":{
                            "type":"STANDARD",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4086"
                                    },
                                    "decisions":[
                                        {
                                            "type":"STANDARD",
                                            "componentType":"LIFE"
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"WOP",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXEYE",
                                                            "description":"No benefit will be payable under this policy for any claims arising from any disease or disorder of the eye including blindness"
                                                        }
                                                    ]
                                                }
                                            ]
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"TPD",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"EXEYE",
                                                            "description":"No benefit will be payable under this policy for any claims arising from any disease or disorder of the eye including blindness"
                                                        }
                                                    ]
                                                }
                                            ]
                                        },
                                        {
                                            "type":"STANDARD",
                                            "componentType":"CI",
                                            "exclusionContributions":[
                                                {
                                                    "contributor":{
                                                        "enquiryLine":"Detached Retina",
                                                        "triggerTag":"Blindness in one eye"
                                                    },
                                                    "value":[
                                                        {
                                                            "code":"CIRMBLI",
                                                            "description":"Blindness is removed as an insured condition"
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
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":4,
                            "description":"Good"
                        },
                        "details":{
                            "keyFacts":"http://insurerx.com/ci/key-facts.pdf"
                        },
                        "id":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80"
                    }
                ]
            }

+ Request Valid Comparison for 2 Products with refer and decline decisions. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "items":[
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"acf83c43-2079-4b5e-a6f9-2a9421536cc4",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"REFER",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4088"
                                    },
                                    "decisions":[
                                        {
                                            "type":"REFER",
                                            "componentType":"LIFE"
                                        }
                                    ]
                                }
                            ]
                        },
                        "quote":{
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":4,
                            "description":"Good"
                        },
                        "details":{
                            "keyFacts":"http://insurerx.com/term/key-facts.pdf"
                        },
                        "id":"insurerx-acf83c43-2079-4b5e-a6f9-2a9421536cc4"
                    },
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"acf83c43-2079-4b5e-a6f9-2a9421536cc4",
                            "type":"TERM"
                        },
                        "decision":{
                            "type":"REFER",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4088"
                                    },
                                    "decisions":[
                                        {
                                            "type":"REFER",
                                            "componentType":"LIFE"
                                        }
                                    ]
                                }
                            ]
                        },
                        "quote":{
                            "status":"IN_PROGRESS"
                        },
                        "rating":{
                            "value":5,
                            "description":"<strong>Recommended</strong>"
                        },
                        "details":{
                            "keyFacts":"http://plr.com/term/key-facts.pdf",
                            "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf"
                        },
                        "id":"plr-acf83c43-2079-4b5e-a6f9-2a9421536cc4"
                    },
                    {
                        "provider":"InsurerX",
                        "product":{
                            "id":"7044b1fa-6fb5-46fb-b8fc-d785cac42112",
                            "type":"CRITICAL_ILLNESS_WITH_LIFE_COVER"
                        },
                        "decision":{
                            "type":"DECLINE",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4088"
                                    },
                                    "decisions":[
                                        {
                                            "type":"REFER",
                                            "componentType":"LIFE"
                                        },
                                        {
                                            "type":"DECLINE",
                                            "componentType":"CI"
                                        },
                                        {
                                            "type":"UNKNOWN",
                                            "componentType":"CI_DECREASING"
                                        }
                                    ]
                                }
                            ]
                        },
                        "id":"insurerx-7044b1fa-6fb5-46fb-b8fc-d785cac42112"
                    },
                    {
                        "provider":"PLR",
                        "product":{
                            "id":"7044b1fa-6fb5-46fb-b8fc-d785cac42112",
                            "type":"CRITICAL_ILLNESS_WITH_LIFE_COVER"
                        },
                        "decision":{
                            "type":"DECLINE",
                            "details":[
                                {
                                    "customer":{
                                        "id":"4088"
                                    },
                                    "decisions":[
                                        {
                                            "type":"REFER",
                                            "componentType":"LIFE"
                                        },
                                        {
                                            "type":"DECLINE",
                                            "componentType":"CI"
                                        },
                                        {
                                            "type":"UNKNOWN",
                                            "componentType":"CI_DECREASING"
                                        }
                                    ]
                                }
                            ]
                        },
                        "id":"plr-7044b1fa-6fb5-46fb-b8fc-d785cac42112"
                    }
                ]
            }
