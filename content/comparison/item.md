## Item [/application/{applicationId}/comparison/{comparisonId}]
Operations on single Comparison Item associated with Application.

JSON response has following structure:

- ***provider*** `string` *(required)* - Unique Provider ID.
- ***product*** `object` *(required)* - Subset of Application Product properties created at the beginning of the underwriting process.
    - ***id*** `string` *(required)* - Unique Product ID.
    - ***type*** `string` *(required)* - Product type. Possible values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
- ***decision*** `object` *(required)* - Underwriting Decision.
    - ***type*** `string` *(required)* - Decision type. Possible values: `UNKNOWN`, `STANDARD`, `NON_STANDARD`, `REFER`, `EVIDENCE_REQUIRED`, `POSTPONE`, `DECLINE`.
    - ***details*** `array` *(required)* - Decision details. It consists of Product Component Decisions per Customer (represented as `object` type).
        - ***customer*** `object` *(required)* - Subset of Application Customer properties created at the beginning of the underwriting process.
            - ***id*** `string` *(required)* - Unique Customer ID.
        - ***decisions*** `array` *(required)* - List of Product Component Decisions (represented as `object` type).
            - ***type*** `string` *(required)* - Product Component Decision type. Same as regular Decision type. Possible values: `UNKNOWN`, `STANDARD`, `NON_STANDARD`, `REFER`, `EVIDENCE_REQUIRED`, `POSTPONE`, `DECLINE`.
            - ***componentType*** `string` *(required)* - Product Component type. Possible values: `LIFE`, `CI`, `LIFE_DECREASING`, `CI_DECREASING`, `IP_0`, `IP_4`, `IP_8`, `IP_13`, `IP_26`, `IP_52`, `TPD`, `WOP`.
            - ***extraMorbidityContributions*** `array` *(optional)* - List of extra morbidity Contributions (represented as `object` type). Object structure described below as number with duration.
            - ***permilleContributions*** `array` *(optional)* - List of permille Contributions (represented as `object` type). Object structure described below as number with duration.
            - ***exclusionContributions*** `array` *(optional)* - List of exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `ExclusionOptions`.
            - ***indicativeExtraMorbidityContributions*** `array` *(optional)* - List of indicative extra morbidity Contributions (represented as `object` type). Object structure described below as number range.
            - ***indicativePermilleContributions*** `array` *(optional)* - List of indicative permille Contributions (represented as `object` type). Object structure described below as number range.
            - ***indicativeExclusionContributions*** `array` *(optional)* - List of indicative exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `ExclusionOptions`.
            - ***evidenceContributions*** `array` *(optional)* - List of indicative exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `EvidenceCodesOptions`.
            - ***durationContributions*** `array` *(optional)* - List of indicative exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `PostponeCodeOptions`.

Number with duration:
- ***contributor*** `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - ***enquiryLine*** `string` *(required)* - Contributor enquiry line.
    - ***triggerTag*** `string` *(required)* - Contributor trigger tag.
- ***value*** `object` *(required)* - Contribution value (represented as `object` type).
    - ***sum*** `number` *(required)* - Numeric value of Contribution.
    - ***duration*** `string` *(optional)* - Duration of value. ISO 8601 duration format (`PnYnMnDTnHnMnS`). Example: `P3Y`.

Number range:
- ***contributor*** `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - ***enquiryLine*** `string` *(required)* - Contributor enquiry line.
    - ***triggerTag*** `string` *(required)* - Contributor trigger tag.
- ***value*** `object` *(required)* - Contribution range (represented as `object` type).
    - ***from*** `number` *(required)* - Start of the range.
    - ***to*** `number` *(required)* - End of the range.

Code and description:
- ***contributor*** `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - ***enquiryLine*** `string` *(required)* - Contributor enquiry line.
    - ***triggerTag*** `string` *(required)* - Contributor trigger tag.
- ***value*** `array` *(required)* - List of code and description pair values (represented as `object` type).
    - ***code*** `string` *(required)* - Option value code. Full list can be retrieved using Question / Option List endpoint with `name` path param set to proper value.
    - ***description*** `string` *(required)* - Human readable description.

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
