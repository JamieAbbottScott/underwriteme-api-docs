## Item [/application/{applicationId}/comparison/item/{itemId}]
Operations on single Comparison Item associated with Application.

JSON response has following structure:

- _**provider**_ `string` *(required)* - Unique Provider ID.
- _**product**_ `object` *(required)* - Application Product properties created at the beginning of the underwriting process.
    - _**id**_ `string` *(required)* - Unique Product ID.
    - _**referenceId**_ `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
    - _**type**_ `string` *(required)* - Product type. Possible values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
    - _**coverAmount**_ `number` *(required/optional)* - Product cover amount. Available if _**premium**_ not specified.
    - _**premium**_ `number` *(required/optional)* - Product premium. Available if _**coverAmount**_ not specified.
    - _**premiumBasis**_ `string` *(required/optional)* - Product premium basis. Available if _**type**_ is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Possible values: `GUARANTEED`, `REVIEWABLE`.
    - _**coverPeriod**_ `number` *(required/optional)* - Product cover period in years. Available if _**coverUntilAge**_ not specified.
    - _**coverUntilAge**_ `number` *(required/optional)* - Product cover until age in years. Available if _**coverPeriod**_ not specified.
    - _**coverBasis**_ `string` *(required)* - Product cover basis. Possible values: `DECREASING`, `LEVEL`, `INCREASING`.
    - _**extendedCoverType**_ `number` *(optional)* - Product extended cover type. Available if _**type**_ is `INCOME_PROTECTION`. Possible values: `FULL`, `BUDGET`. `FULL` is used by default if no value is specified.
    - _**deferredPeriodInWeeks**_ `number` *(required/optional)* - Product deferred period in weeks. Available if _**type**_ is `INCOME_PROTECTION`. Possible values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
    - _**livesAssured**_ `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
        - _**name**_ `string` *(required)* - Customer name.
        - _**surname**_ `string` *(required)* - Customer surname.
        - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer.
        - _**waiverOfPremium**_ `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
        - _**determinesCeaseAge**_ `boolean` *(optional)* - Flag to mark which customer determines the cease age.
        - _**totalPermanentDisability**_ `boolean` *(optional)* - Flag to mark total permanent disability for Customer.
- _**decision**_ `object` *(required)* - Underwriting Decision.
    - _**type**_ `string` *(required)* - Decision type. Possible values: `UNKNOWN`, `STANDARD`, `NON_STANDARD`, `REFER`, `EVIDENCE_REQUIRED`, `POSTPONE`, `DECLINE`.
    - _**immediateCover**_ `boolean` *(required)* - Flag to indicate whether cover is immediately available.
    - _**nonIndicative**_ `boolean` *(required)* - Flag to indicate whether this decision is non indicative.
    - _**details**_ `array` *(required)* - Decision details. It consists of Product Component Decisions per Customer (represented as `object` type).
        - _**customer**_ `object` *(required)* - Subset of Application Customer properties created at the beginning of the underwriting process.
            - _**id**_ `string` *(required)* - Unique Customer ID.
            - _**name**_ `string` *(required)* - Customer name.
            - _**surname**_ `string` *(required)* - Customer surname.
            - _**gender**_ 'string' *(required)* - Customer gender.
            - _**atRiskOfSmoking**_ 'boolean' *(required)* - Flag indicating if the customer is a non-smoker with a smoking risk.
        - _**decisions**_ `array` *(required)* - List of Product Component Decisions (represented as `object` type).
            - _**type**_ `string` *(required)* - Product Component Decision type. Same as regular Decision type. Possible values: `UNKNOWN`, `STANDARD`, `NON_STANDARD`, `REFER`, `EVIDENCE_REQUIRED`, `POSTPONE`, `DECLINE`.
            - _**componentType**_ `string` *(required)* - Product Component type. Possible values: `LIFE`, `CI`, `LIFE_DECREASING`, `CI_DECREASING`, `IP_0`, `IP_4`, `IP_8`, `IP_13`, `IP_26`, `IP_52`, `TPD`, `WOP`.
            - _**optional**_ `boolean` *(required)* - Flag to indicate whether this is an optional component.
            - _**disabilityDefinition**_ `string` *(optional)* - Disability definition value. Possible values: `Own Occupation`, `Suited Occupation`, `Any Occupation`, `Work Tasks`, `Activities Of Daily Living`, `Functional Abilities Test`, `Look After Yourself`, `Comprehensive`, `Core`.
            - _**message**_ `string` *(optional)* - Decision specific message value.
            - _**extraMorbidityContributions**_ `array` *(optional)* - List of extra morbidity Contributions (represented as `object` type). Object structure described below as [DurationableOptions](#DurationableOptions).
            - _**permilleContributions**_ `array` *(optional)* - List of permille Contributions (represented as `object` type). Object structure described below as [DurationableOptions](#DurationableOptions).
            - _**exclusionContributions**_ `array` *(optional)* - List of exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is [ExclusionOptions](#ExclusionOptions).
            - _**indicativeExtraMorbidityContributions**_ `array` *(optional)* - List of indicative extra morbidity Contributions (represented as `object` type). Object structure described below as [RangedOptions](#RangedOptions).
            - _**indicativePermilleContributions**_ `array` *(optional)* - List of indicative permille Contributions (represented as `object` type). Object structure described below as [RangedOptions](#RangedOptions).
            - _**indicativeExclusionContributions**_ `array` *(optional)* - List of indicative exclusion Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is [ExclusionOptions](#ExclusionOptions).
            - _**evidenceContributions**_ `array` *(optional)* - List of evidence Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `EvidenceCodesOptions`.
            - _**durationContributions**_ `array` *(optional)* - List of duration Contributions (represented as `object` type). Object structure described below as code with description. Option List name for possible values is `PostponeCodeOptions`.
        - _**productExclusionContributions**_ `array` *(optional)* - List of Product Decisions (represented as `object` type). Mutually exclusive to *exclusionContributions* . Option List name for possible values is [ExclusionOptions](#ExclusionOptions).
- _**purchasable**_ `boolean`  - Flag to indicate if the product can be purchased.
- _**quotable**_ `boolean`  - Does provider quote?
- _**quote**_ `object` *(optional)* - Provider quote.
    - _**state**_ `string` *(required)* - State of the quote request. Possible values: `PENDING`, `SUCCEEDED`, `FAILED`
    - _**date**_ `string` *(optional)* - Date and time quote request was made. ISO 8601 date format (`YYYY-MM-DDThh:mm:ss.SSS`). Example: `2015-04-11T12:33:12.321`.
    - _**expiryDate**_ `string` *(optional)* - Date the quote expires. ISO 8601 date format (`YYYY-MM-DD`). Example: `2015-04-11`.
    - _**expired**_ `boolean` *(optional)* - Flag to mark whether this quote has expired.
    - _**notes**_ `array` *(optional)* - Notes relating to a quote.
        - _**important**_ `boolean` *(required)* - Is this an important note.
        - _**reason**_ `string` *(optional)* - Reason attached to note.
        - _**description**_ `string` *(required)* - Note description.
    - _**variations**_ `array` *(optional)* - Variations relating to a quote.
        - _**originalValue**_ `string` *(required)* - Original value before variation.
        - _**newValue**_ `string` *(required)* - New value after variation.
        - _**reason**_ `string` *(optional)* - Reason attached to the variation.
    - _**premium**_ `object` *(optional)* - Quote premium. Can be a fixed or ranged value.
        - _**from**_ `number` *(required)* - Lower bound of the premium value.
        - _**to**_ `number` *(required)* - Upper bound of the premium value.
        - _**lifetime**_ `number` *(required)* - Total premium to be paid over time.
        - _**discount**_ `number` *(required)* - Total amount discounted from the premium value.
        - _**unloaded**_ `object` *(optional)* - Quote premium unloaded price. Can be a fixed or ranged value.
            - _**from**_ `number` *(required)* - Lower bound of the premium unloaded price value.
            - _**to**_ `number` *(required)* - Upper bound of the premium unloaded price value.
        - _**lives**_ `array` *(required)* - List of Life specific premiums (represented as `object` type).
            - _**refersTo**_ `string` *(required)* - Unique Customer ID.
            - _**wopContribution**_ `number` *(required)* - Allocated Waiver of Premium premium for the given life.
    - _**sumAssured**_ `number` *(optional)* - Quote sum assured.
    - _**anonymousQuote**_ `array` *(optional)* - Indicates if the quote was undertaken by a user without an agent id for the Provider
    - _**errors**_ `array` *(optional)* - List of errors in the quote response (represented as `string` type).
    - _**commission**_ `object` *(optional)* - Commission value.
        - _**initial**_ `number` *(required)* - Initial commission value.
        - _**renewal**_ `number` *(required)* - Renewal commission value.
        - _**sacrifice**_ `object` *(required)* - Commission sacrifice which drives commission.
            - _**initial**_ `number` *(required)* - Initial commission sacrifice. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
            - _**renewal**_ `number` *(required)* - Renewal commission value. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
- _**rating**_ `object` *(optional)* - Provider Product specific rating.
    - _**value**_ `number` *(optional)* - Numerical value of the rating. Possible value is an integer value between `0` and `5`.
    - _**description**_ `string` *(optional)* - HTML formatted description text of the rating.
- _**details**_ `object` *(optional)* - Provider Product specific details like Key Facts, Terms & Conditions documents links and product description.
    - _**keyFacts**_ `string` *(optional)* - Key Facts document link.
    - _**termsAndConditions**_ `string` *(optional)* - Terms & Conditions document link.
    - _**shortDescription**_ `string` *(optional)* - Product description (may differ on the basis of logged-in user's firm distribution channel).

#### DurationableOptions (Number with duration):
- _**contributor**_ `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - _**enquiryLine**_ `string` *(required)* - Contributor enquiry line.
    - _**triggerTag**_ `string` *(required)* - Contributor trigger tag.
    - _**derived**_ `boolean` *(required)* - Flag to indicate whether the Contributor is derived and is likely to be hidden.
- _**value**_ `object` *(required)* - Contribution value (represented as `object` type).
    - _**sum**_ `number` *(required)* - Numeric value of Contribution.
    - _**duration**_ `string` *(optional)* - Duration of value. ISO 8601 duration format (`PnYnMnDTnHnMnS`). Example: `P3Y`.

#### RangedOptions (Number range):
- _**contributor**_ `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - _**enquiryLine**_ `string` *(required)* - Contributor enquiry line.
    - _**triggerTag**_ `string` *(required)* - Contributor trigger tag.
    - _**derived**_ `boolean` *(required)* - Flag to indicate whether the Contributor is derived and is likely to be hidden.
- _**value**_ `object` *(required)* - Contribution range (represented as `object` type).
    - _**from**_ `number` *(required)* - Start of the range.
    - _**to**_ `number` *(required)* - End of the range.

#### ExclusionOptions (Code and description):
- _**contributor**_ `object` *(required)* - Information which underwriting Question contributed to Decision (represented as `object` type).
    - _**enquiryLine**_ `string` *(required)* - Contributor enquiry line.
    - _**triggerTag**_ `string` *(required)* - Contributor trigger tag.
    - _**derived**_ `boolean` *(required)* - Flag to indicate whether the Contributor is derived and is likely to be hidden.
- _**value**_ `array` *(required)* - List of code and description pair values (represented as `object` type).
    - _**code**_ `string` *(required)* - Option value code. Full list can be retrieved using Question / Option List endpoint with `name` path param set to proper value.
    - _**description**_ `string` *(required)* - Human readable description.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + itemId (required, string, `plr-2774498c-d0b8-4d40-8429-b00bf0fc0056`) ... Unique ID of existing Comparison Item.

### Retrieve Comparison Item [GET]
+ Request Single Comparison Item with unknown decision. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
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
                "decision":{
                    "type":"UNKNOWN",
                    "immediateCover":true,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4330",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"UNKNOWN",
                                    "componentType":"LIFE",
                                    "optional":false
                                }
                            ]
                        }
                    ]
                },
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-01-01T00:00:00.000",
                    "expiryDate":"2015-02-01",
                    "premium":{
                        "from":9.84,
                        "to":9.84,
                        "unloaded":{
                            "from":7.84,
                            "to":7.84
                        },
                        "lifetime":1180.80,
                        "lives":[
                            {
                                "refersTo":"4336"
                            }
                        ],
                        "discount": 0.00
                    },
                    "notes": [
                      {
                        "description": "description1",
                        "reason": "note1",
                        "important": false
                      },
                      {
                        "description": "description2",
                        "reason": "note2",
                        "important": false
                      }
                    ],
                    "variations": [
                      {
                        "originalValue": "originalValue1",
                        "newValue": "newValue1",
                        "reason": "reason1"
                      },
                      {
                        "originalValue": "originalValue2",
                        "newValue": "newValue2",
                        "reason": "reason2"
                      }
                    ],
                    "sumAssured":120000,
                    "anonymousQuote":true,
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
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
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
                    "referenceId":"pro-001",
                    "type":"CRITICAL_ILLNESS",
                    "coverBasis":"DECREASING",
                    "coverPeriod":10,
                    "coverAmount":110000,
                    "premiumBasis":"GUARANTEED",
                    "livesAssured":[
                        {
                            "name":"John",
                            "surname":"Doe",
                            "refersTo":"4333"
                        }
                    ]
                },
                "decision":{
                    "type":"DECLINE",
                    "immediateCover":false,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4333",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"DECLINE",
                                    "componentType":"CI",
                                    "optional":false,
                                    "message":"Unfortunately PLR is unable to provide you with Life Insurance"
                                }
                            ]
                        }
                    ]
                },
                "purchasable": false,
                "quotable": false,
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
                    "referenceId":"pro-001",
                    "type":"TERM",
                    "coverBasis":"DECREASING",
                    "coverPeriod":10,
                    "coverAmount":110000,
                    "livesAssured":[
                        {
                            "name":"John",
                            "surname":"Doe",
                            "refersTo":"4335"
                        }
                    ]
                },
                "decision":{
                    "type":"REFER",
                    "immediateCover":false,
                    "nonIndicative":true,
                    "details":[
                        {
                            "customer":{
                                "id":"4335",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"REFER",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "indicativeExtraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Rheumatoid Arthritis",
                                                "triggerTag":"Rheumatoid arthritis",
                                                "derived":false
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
                                                "triggerTag":"Rheumatoid arthritis",
                                                "derived":false
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
                "purchasable": true,
                "quotable": true,
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-01-01T00:00:00.000",
                    "expiryDate":"2015-02-01",
                    "premium":{
                        "from":26.00,
                        "to":27.00,
                        "unloaded":{
                            "from":7.00,
                            "to":6.00
                        },
                        "lifetime":3120.00,
                        "lives":[
                            {
                                "refersTo":"4336"
                            }
                        ],
                        "discount": 0.00
                    },
                    "notes": [
                      {
                        "description": "description1",
                        "reason": "note1",
                        "important": false
                      },
                      {
                        "description": "description2",
                        "reason": "note2",
                        "important": false
                      }
                    ],
                    "variations": [
                      {
                        "originalValue": "originalValue1",
                        "newValue": "newValue1",
                        "reason": "reason1"
                      },
                      {
                        "originalValue": "originalValue2",
                        "newValue": "newValue2",
                        "reason": "reason2"
                      }
                    ],                    
                    "sumAssured":120000,
                    "anonymousQuote":false,
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
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
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
                "decision":{
                    "type":"STANDARD",
                    "immediateCover":true,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4336",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"STANDARD",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma",
                                                "derived":false
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading",
                                                "derived":true
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
                "purchasable": true,
                "quotable": true,
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-01-01T00:00:00.000",
                    "expiryDate":"2015-02-01",
                    "premium":{
                        "from":10.26,
                        "to":10.26,
                        "unloaded":{
                            "from":8.05,
                            "to":8.05
                        },
                        "lifetime":1231.20,
                        "lives":[
                            {
                                "refersTo":"4336"
                            }
                        ],
                        "discount": 0.00
                    },
                    "notes": [
                      {
                        "description": "description1",
                        "reason": "note1",
                        "important": false
                      },
                      {
                        "description": "description2",
                        "reason": "note2",
                        "important": false
                      }
                    ],
                    "variations": [
                      {
                        "originalValue": "originalValue1",
                        "newValue": "newValue1",
                        "reason": "reason1"
                      },
                      {
                        "originalValue": "originalValue2",
                        "newValue": "newValue2",
                        "reason": "reason2"
                      }
                    ],
                    "sumAssured":120000,
                    "anonymousQuote":false,
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
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
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
                    "referenceId":"pro-001",
                    "type":"TERM",
                    "coverBasis":"LEVEL",
                    "coverPeriod":10,
                    "coverAmount":110000,
                    "livesAssured":[
                        {
                            "name":"John",
                            "surname":"Doe",
                            "refersTo":"4338"
                        }
                    ]
                },
                "decision":{
                    "type":"POSTPONE",
                    "immediateCover":false,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4338",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"POSTPONE",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "durationContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Rheumatoid Arthritis",
                                                "triggerTag":"Rheumatoid arthritis",
                                                "derived":false
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
                "purchasable": false,
                "quotable": false,
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
                },
                "id":"plr-50418718-acb5-4b4e-a4e5-60cb4320f5d5"
            }

+ Request Single Comparison Item with standard decision and expired quote. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"96402071-3646-4c75-b50a-f06586516fed",
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
                "decision":{
                    "type":"STANDARD",
                    "immediateCover":true,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4336",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"STANDARD",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma",
                                                "derived":false
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading",
                                                "derived":true
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
                "purchasable": true,
                "quotable": true,
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-01-01T00:00:00.000",
                    "expiryDate":"2014-02-01",
                    "expired":true,
                    "premium":{
                        "from":10.26,
                        "to":10.26,
                        "unloaded":{
                            "from":8.05,
                            "to":8.05
                        },
                        "lifetime":1231.20,
                        "lives":[
                            {
                                "refersTo":"4336"
                            }
                        ],
                        "discount": 0.00
                    },
                    "notes": [
                      {
                        "description": "some really important description",
                        "reason": "",
                        "important": true
                      },
                      {
                        "description": "description2",
                        "reason": "note2",
                        "important": false
                      }
                    ],
                    "variations": [
                      {
                        "originalValue": "originalValue1",
                        "newValue": "newValue1",
                        "reason": "reason1"
                      },
                      {
                        "originalValue": "originalValue2",
                        "newValue": "newValue2",
                        "reason": "reason2"
                      }
                    ],                    
                    "sumAssured":120000,
                    "anonymousQuote":false,
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
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
                },
                "id":"plr-96402071-3646-4c75-b50a-f06586516fed"
            }

+ Request Single Comparison Item with WoP. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"96402071-3646-4c75-b50a-f06586516fed",
                    "referenceId":"pro-001",
                    "type":"TERM",
                    "coverBasis":"DECREASING",
                    "coverPeriod":10,
                    "coverAmount":110000,
                    "livesAssured":[
                        {
                            "name":"John",
                            "surname":"Doe",
                            "refersTo":"4336",
                            "waiverOfPremium":true
                        }
                    ]
                },
                "decision":{
                    "type":"STANDARD",
                    "immediateCover":true,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4336",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"STANDARD",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma",
                                                "derived":false
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading",
                                                "derived":true
                                            },
                                            "value":{
                                                "sum":-25
                                            }
                                        }
                                    ]
                                },
                                {
                                    "type":"STANDARD",
                                    "componentType":"WOP",
                                    "disabilityDefinition":"Own Occupation",
                                    "optional":true,
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma",
                                                "derived":false
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading",
                                                "derived":true
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
                "purchasable": true,
                "quotable": true,
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-01-01T00:00:00.000",
                    "expiryDate":"2015-02-01",
                    "premium":{
                        "from":10.26,
                        "to":10.26,
                        "unloaded":{
                            "from":8.05,
                            "to":8.05
                        },
                        "lifetime":1231.20,
                        "lives":[
                            {
                                "refersTo":"4336",
                                "wopContribution":1.02
                            }
                        ],
                        "discount": 0.00
                    },
                    "sumAssured":120000,
                    "anonymousQuote":false,
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
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
                },
                "id":"plr-96402071-3646-4c75-b50a-f06586516fed"
            }

+ Request Single Comparison Item with Non Medical Limits contributor. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"LiverpoolVictoria",
                "product":{
                    "id":"00999a1a-e2d7-4bbc-bcb9-ae6845e4492f",
                    "type":"TERM",
                    "coverBasis":"LEVEL",
                    "coverPeriod":12,
                    "coverAmount":1200000,
                    "commissionSacrifice":{
                        "initial":0,
                        "renewal":2.50
                    },
                    "livesAssured":[
                        {
                            "name":"John",
                            "surname":"Doe",
                            "refersTo":"1112"
                        }
                    ]
                },
                "decision":{
                    "type":"EVIDENCE_REQUIRED",
                    "details":[
                        {
                            "customer":{
                                "id":"1112",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"EVIDENCE_REQUIRED",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "evidenceContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Non Medical Limits",
                                                "triggerTag":"Non Medical Limits",
                                                "derived":true
                                            },
                                            "value":[
                                                {
                                                    "code":"GPR",
                                                    "description":"GP report"
                                                },
                                                {
                                                    "code":"HIV",
                                                    "description":"HIV test"
                                                },
                                                {
                                                    "code":"GPR",
                                                    "description":"GP report"
                                                },
                                                {
                                                    "code":"HIV",
                                                    "description":"HIV test"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "immediateCover":false,
                    "nonIndicative":false
                },
                "purchasable": true,
                "quotable": true,
                "quote":{
                    "state":"SUCCEEDED",
                    "date":"2015-11-06T06:56:38.000",
                    "premium":{
                        "from":34.81,
                        "to":34.81,
                        "unloaded":{
                            "from":34.81,
                            "to":34.81
                        },
                        "lifetime":5012.64,
                        "lives":[
                            {
                                "refersTo":"1112"
                            }
                        ]
                    },
                    "sumAssured":1200000,
                    "anonymousQuote":false,
                    "commission":{
                        "initial":0.00,
                        "renewal":0.87,
                        "sacrifice":{
                            "initial":0,
                            "renewal":2.50
                        }
                    },
                    "expiryDate":"2015-11-21"
                },
                "id":"plr-96402071-3646-4c75-b50a-f06586516fed"
            }

 Request Single Comparison Item with standard decision and fixed premium when quote fails. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "provider":"PLR",
                "product":{
                    "id":"96402071-3646-4c75-b50a-f06586516fed",
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
                "decision":{
                    "type":"STANDARD",
                    "immediateCover":true,
                    "nonIndicative":false,
                    "details":[
                        {
                            "customer":{
                                "id":"4336",
                                "name":"John",
                                "surname":"Doe"
                            },
                            "decisions":[
                                {
                                    "type":"STANDARD",
                                    "componentType":"LIFE",
                                    "optional":false,
                                    "extraMorbidityContributions":[
                                        {
                                            "contributor":{
                                                "enquiryLine":"Asthma",
                                                "triggerTag":"Asthma",
                                                "derived":false
                                            },
                                            "value":{
                                                "sum":25
                                            }
                                        },
                                        {
                                            "contributor":{
                                                "enquiryLine":"Min Loading",
                                                "triggerTag":"Min Loading",
                                                "derived":true
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
                "purchasable": false,
                "quotable": true,
                "quote":{
                    "state":"FAILED",
                    "errors":[
                        "Problem with quote provider call"
                    ]
                },
                "rating":{
                    "value":5,
                    "description":"<strong>Recommended</strong>"
                },
                "details":{
                    "keyFacts":"http://plr.com/term/key-facts.pdf",
                    "termsAndConditions":"http://plr.com/term/terms-and-conditions.pdf",
                    "shortDescription":"Some more information about this term product"
                },
                "id":"plr-96402071-3646-4c75-b50a-f06586516fed"
            }

