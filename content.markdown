# Group Question
Question related resources of the **UnderwriteMe API**.

## Definition [/enquiry/question/{branch}/{tag}/{name}]
Operations on Question Definition.

+ Parameters

    + branch (required, string, `PLR`) ... Name of Enquiry Definition branch.
    + tag (required, string, `bootstrap`) ... Name of Enquiry Definition tag.
    + name (required, string, `FAMILY_HISTORY_LIFE`) ... Unique name of Enquiry Question.

### Retrieve Question Definition [GET]
+ Request Question Definition (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "name": "FAMILY_HISTORY_LIFE",
                "text": "Have your natural <b>parents, brothers</b> or <b>sisters</b> had any of the following conditions <b>before the age of 65</b>?",
                "type": "OPTION_GROUP",
                "isMultiValued": true,
                "optionListName": "FamilyAilments",
                "isLenient": false,
                "isBounded": false
            }

## Option List [/enquiry/option-list/{branch}/{tag}/{name}]
Operations on Question Option List.

+ Parameters

    + branch (required, string, `PLR`) ... Name of Enquiry Definition branch.
    + tag (required, string, `bootstrap`) ... Name of Enquiry Definition tag.
    + name (required, string, `FamilyAilments`) ... Unique name of Enquiry Option List.

### Retrieve Question Option List [GET]
+ Request Question Option List (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            [
                {
                    "name":"HEART",
                    "text":"Heart attack, angina or stroke"
                },
                {
                    "name":"DIABETES",
                    "text":"Diabetes"
                },
                {
                    "name":"CANCERS",
                    "text":"Breast, ovarian or bowel cancer or familial bowel polyps"
                },
                {
                    "name":"DYST_HUNT",
                    "text":"Muscular dystrophy or Huntington's disease"
                },
                {
                    "name":"PKD",
                    "text":"Polycystic kidney disease"
                },
                {
                    "name":"MS",
                    "text":"Multiple sclerosis"
                },
                {
                    "name":"ANY_OTHER",
                    "text":"Any other condition, which runs in your family that you have been investigated for"
                },
                {
                    "name":"NO_CONTACT",
                    "text":"No contact with family members / Don't know",
                    "tags":[
                        "EXCLUSIVE"
                    ]
                },
                {
                    "name":"NONE_OF",
                    "text":"None of these",
                    "tags":[
                        "EXCLUSIVE"
                    ]
                }
            ]

## Option Lookup [/enquiry/question-option-lookup/{branch}/{tag}/{name}/{stem}]
Operations on Question Option Lookup.

+ Parameters

    + branch (required, string, `PLR`) ... Name of Enquiry Definition branch.
    + tag (required, string, `bootstrap`) ... Name of Enquiry Definition tag.
    + name (required, string, `OCCUPATION`) ... Unique name of Enquiry Question name.
    + stem (required, string, `Progra`) ... Partial value to match existing values to.

### Retrieve Question Options using partial lookup [GET]
+ Request occupation Question Options that matches stem (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            [
                "Programme Operation Assistant",
                "Programmer",
                "Programmer-Analyst",
                "Biographer",
                "Frogman",
                "Geographer",
                "Propman"
            ]

# Group Post-Declaration
Post-Declaration related resources of the **UnderwriteMe API**.

## Existing [/application/{applicationId}/post-declaration]
Operations on existing Post-Declaration associated with Application.

Post-Declaration can be retrieved and confirmed if all Customer Enquiries are satisfied.

Confirming Post-Declaration means closing all Customer Enquiries. Any changes to Enquiry will require confirming Post-Declaration again.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Post-Declaration [GET]
+ Request Valid Post-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": false,
                "text": "<p>HTML formatted Post-Declaration text.</p>"
            }

### Confirm Post-Declaration [PUT]
+ Request Confirm Post-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": true,
                "text": "<p>HTML formatted Post-Declaration text.</p>"
            }

# Group Comparison
Comparison related resources of the **UnderwriteMe API**.

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
