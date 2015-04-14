## Existing [/application/{applicationId}/enquiry/{enquiryId}]
Operations on existing Enquiry associated with Application.

In order to read or update Enquiry a Pre-Declaration has to be confirmed.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + enquiryId (required, string, `029ab8d8-0a62-423e-8e84-6e8d505bb742`) ... Unique ID of existing Enquiry associated with Application.

### Retrieve Enquiry [GET]
+ Request Newly initialized Enquiry. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "enquiryId":"029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "branch":"trunk",
                "tag":"bootstrap",
                "isVoid":false,
                "isOpen":true,
                "isSatisfied":false,
                "sections":[
                    {
                        "name":"Your Basic Details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Your_Basic_Details",
                                "path":"Your_Basic_Details",
                                "section":"Your Basic Details",
                                "preamble":"Please tell us your basic quote information",
                                "alias":"Your Basic Details",
                                "triggers":[
                                    "Your Basic Details"
                                ],
                                "questions":[
                                    {
                                        "name":"PRODUCT",
                                        "path":"PRODUCT",
                                        "answers":[
                                            "Life"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TOTAL_LIFE_COVER",
                                        "path":"TOTAL_LIFE_COVER",
                                        "answers":[
                                            "120000"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"GENDER",
                                        "path":"GENDER",
                                        "answers":[
                                            "Male"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BIRTHDATE",
                                        "path":"BIRTHDATE",
                                        "answers":[
                                            "01/01/1990"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SMOKING",
                                        "path":"SMOKING",
                                        "answers":[
                                            "Non-smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SALES_CHANNEL",
                                        "path":"SALES_CHANNEL",
                                        "answers":[
                                            "Telephone"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Personal details",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Key_Info",
                                "path":"Key_Info",
                                "section":"Personal details",
                                "preamble":"Please tell us some things about yourself:",
                                "alias":"Key Info",
                                "triggers":[
                                    "Key Info"
                                ],
                                "questions":[
                                    {
                                        "name":"HEIGHT",
                                        "path":"HEIGHT",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"WEIGHT_MALE",
                                        "path":"WEIGHT_MALE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NON_SMOKER_STATUS",
                                        "path":"NON_SMOKER_STATUS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"OCCUPATION",
                                        "path":"OCCUPATION",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"FAMILY_HISTORY_LIFE",
                                        "path":"FAMILY_HISTORY_LIFE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Last 5 year's health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Detailed_Medical",
                                "path":"Detailed_Medical",
                                "section":"Last 5 year's health",
                                "preamble":"In the last 5 years have you had:",
                                "alias":"Detailed Medical",
                                "triggers":[
                                    "Detailed Medical"
                                ],
                                "questions":[
                                    {
                                        "name":"BP_LIPID_CHEST",
                                        "path":"BP_LIPID_CHEST",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DIABETES",
                                        "path":"DIABETES",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MENTAL_MINOR",
                                        "path":"MENTAL_MINOR",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LUNG",
                                        "path":"LUNG",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BOWEL",
                                        "path":"BOWEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"KIDNEY_MALE",
                                        "path":"KIDNEY_MALE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LIVER",
                                        "path":"LIVER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NEURO",
                                        "path":"NEURO",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Have you ever had",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Major",
                                "path":"Health_Major",
                                "section":"Have you ever had",
                                "preamble":"Have you ever had:",
                                "alias":"Health Major",
                                "triggers":[
                                    "Health Major"
                                ],
                                "questions":[
                                    {
                                        "name":"MENTAL_SERIOUS",
                                        "path":"MENTAL_SERIOUS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"CANCER",
                                        "path":"CANCER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HEART",
                                        "path":"HEART",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"STROKE",
                                        "path":"STROKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HIV_HEP",
                                        "path":"HIV_HEP",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Recent health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Other",
                                "path":"Health_Other",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 2 years have you:",
                                "alias":"Health Other",
                                "triggers":[
                                    "Health Other"
                                ],
                                "questions":[
                                    {
                                        "name":"TREATMENT",
                                        "path":"TREATMENT",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ONGOING_REVIEWS",
                                        "path":"ONGOING_REVIEWS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"INVESTIGATIONS",
                                        "path":"INVESTIGATIONS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":false,
                                "name":"Health_Recent",
                                "path":"Health_Recent",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 3 months have you:",
                                "alias":"Health Recent",
                                "triggers":[
                                    "Health Recent"
                                ],
                                "questions":[
                                    {
                                        "name":"SYMPTOMS",
                                        "path":"SYMPTOMS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Lifestyle",
                                "path":"Lifestyle",
                                "section":"Lifestyle",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Lifestyle",
                                "triggers":[
                                    "Lifestyle"
                                ],
                                "questions":[
                                    {
                                        "name":"PURSUITS",
                                        "path":"PURSUITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MOTOR_BIKE",
                                        "path":"MOTOR_BIKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRIVING_BAN",
                                        "path":"DRIVING_BAN",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TRAVEL",
                                        "path":"TRAVEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle continued...",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Alcohol_Drugs",
                                "path":"Alcohol_Drugs",
                                "section":"Lifestyle continued...",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Alcohol Drugs",
                                "triggers":[
                                    "Alcohol Drugs"
                                ],
                                "questions":[
                                    {
                                        "name":"ALCOHOL_BEER",
                                        "path":"ALCOHOL_BEER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_WINE",
                                        "path":"ALCOHOL_WINE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_SPIRITS",
                                        "path":"ALCOHOL_SPIRITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_OTHER",
                                        "path":"ALCOHOL_OTHER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_ADVICE",
                                        "path":"ALCOHOL_ADVICE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRUGS",
                                        "path":"DRUGS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    }
                ],
                "optionBuckets":{
                    "InsurerX":[

                    ],
                    "PLR":[

                    ]
                },
                "numericBuckets":{
                    "InsurerX":[

                    ],
                    "PLR":[

                    ]
                },
                "allAnswers":{
                    "PRODUCT":[
                        "Life"
                    ],
                    "GENDER":[
                        "Male"
                    ],
                    "BIRTHDATE":[
                        "01/01/1990"
                    ],
                    "SMOKING":[
                        "Non-smoker"
                    ],
                    "SALES_CHANNEL":[
                        "Telephone"
                    ],
                    "IP_DEFERRED_PERIOD":[

                    ],
                    "TOTAL_LIFE_COVER":[
                        "120000"
                    ],
                    "HEIGHT":[

                    ],
                    "OCCUPATION":[

                    ],
                    "WEIGHT_MALE":[

                    ],
                    "NON_SMOKER_STATUS":[

                    ],
                    "FAMILY_HISTORY_LIFE":[

                    ],
                    "DIABETES":[

                    ],
                    "LUNG":[

                    ],
                    "BOWEL":[

                    ],
                    "LIVER":[

                    ],
                    "BP_LIPID_CHEST":[

                    ],
                    "MENTAL_MINOR":[

                    ],
                    "KIDNEY_MALE":[

                    ],
                    "NEURO":[

                    ],
                    "MENTAL_SERIOUS":[

                    ],
                    "CANCER":[

                    ],
                    "HEART":[

                    ],
                    "STROKE":[

                    ],
                    "HIV_HEP":[

                    ],
                    "TREATMENT":[

                    ],
                    "ONGOING_REVIEWS":[

                    ],
                    "INVESTIGATIONS":[

                    ],
                    "SYMPTOMS":[

                    ],
                    "MOTOR_BIKE":[

                    ],
                    "DRIVING_BAN":[

                    ],
                    "TRAVEL":[

                    ],
                    "PURSUITS":[

                    ],
                    "ALCOHOL_BEER":[

                    ],
                    "ALCOHOL_WINE":[

                    ],
                    "ALCOHOL_SPIRITS":[

                    ],
                    "ALCOHOL_OTHER":[

                    ],
                    "ALCOHOL_ADVICE":[

                    ],
                    "DRUGS":[

                    ]
                }
            }

### Update Enquiry [PUT]
+ Request Invalid Enquiry answers give validation errors. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "HEIGHT":"1.82",
                "WEIGHT_MALE":"Too much",
                "NON_SMOKER_STATUS":"Don't smoke",
                "OCCUPATION":"None",
                "FAMILY_HISTORY_LIFE":"Don't know"
            }

+ Response 200

            {
                "enquiryId":"029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "branch":"trunk",
                "tag":"bootstrap",
                "isVoid":false,
                "isOpen":true,
                "isSatisfied":false,
                "sections":[
                    {
                        "name":"Your Basic Details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Your_Basic_Details",
                                "path":"Your_Basic_Details",
                                "section":"Your Basic Details",
                                "preamble":"Please tell us your basic quote information",
                                "alias":"Your Basic Details",
                                "triggers":[
                                    "Your Basic Details"
                                ],
                                "questions":[
                                    {
                                        "name":"PRODUCT",
                                        "path":"PRODUCT",
                                        "answers":[
                                            "Life"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TOTAL_LIFE_COVER",
                                        "path":"TOTAL_LIFE_COVER",
                                        "answers":[
                                            "120000"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"GENDER",
                                        "path":"GENDER",
                                        "answers":[
                                            "Male"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BIRTHDATE",
                                        "path":"BIRTHDATE",
                                        "answers":[
                                            "01/01/1990"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SMOKING",
                                        "path":"SMOKING",
                                        "answers":[
                                            "Non-smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SALES_CHANNEL",
                                        "path":"SALES_CHANNEL",
                                        "answers":[
                                            "Telephone"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Personal details",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Key_Info",
                                "path":"Key_Info",
                                "section":"Personal details",
                                "preamble":"Please tell us some things about yourself:",
                                "alias":"Key Info",
                                "triggers":[
                                    "Key Info"
                                ],
                                "questions":[
                                    {
                                        "name":"HEIGHT",
                                        "path":"HEIGHT",
                                        "answers":[
                                            "1.82"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"WEIGHT_MALE",
                                        "path":"WEIGHT_MALE",
                                        "answers":[
                                            "Too much"
                                        ],
                                        "validationErrors":{
                                            "Too much":[
                                                "Please enter a number."
                                            ]
                                        }
                                    },
                                    {
                                        "name":"NON_SMOKER_STATUS",
                                        "path":"NON_SMOKER_STATUS",
                                        "answers":[
                                            "Don't smoke"
                                        ],
                                        "validationErrors":{
                                            "Don't smoke":[
                                                "Don't smoke is not a valid answer for this question."
                                            ]
                                        }
                                    },
                                    {
                                        "name":"OCCUPATION",
                                        "path":"OCCUPATION",
                                        "answers":[
                                            "None"
                                        ],
                                        "validationErrors":{
                                            "None":[
                                                "None is not a valid answer for this question."
                                            ]
                                        }
                                    },
                                    {
                                        "name":"FAMILY_HISTORY_LIFE",
                                        "path":"FAMILY_HISTORY_LIFE",
                                        "answers":[
                                            "Don't know"
                                        ],
                                        "validationErrors":{
                                            "Don't know":[
                                                "Don't know is not a valid answer for this question."
                                            ]
                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Last 5 year's health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Detailed_Medical",
                                "path":"Detailed_Medical",
                                "section":"Last 5 year's health",
                                "preamble":"In the last 5 years have you had:",
                                "alias":"Detailed Medical",
                                "triggers":[
                                    "Detailed Medical"
                                ],
                                "questions":[
                                    {
                                        "name":"BP_LIPID_CHEST",
                                        "path":"BP_LIPID_CHEST",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DIABETES",
                                        "path":"DIABETES",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MENTAL_MINOR",
                                        "path":"MENTAL_MINOR",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LUNG",
                                        "path":"LUNG",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BOWEL",
                                        "path":"BOWEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"KIDNEY_MALE",
                                        "path":"KIDNEY_MALE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LIVER",
                                        "path":"LIVER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NEURO",
                                        "path":"NEURO",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Have you ever had",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Major",
                                "path":"Health_Major",
                                "section":"Have you ever had",
                                "preamble":"Have you ever had:",
                                "alias":"Health Major",
                                "triggers":[
                                    "Health Major"
                                ],
                                "questions":[
                                    {
                                        "name":"MENTAL_SERIOUS",
                                        "path":"MENTAL_SERIOUS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"CANCER",
                                        "path":"CANCER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HEART",
                                        "path":"HEART",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"STROKE",
                                        "path":"STROKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HIV_HEP",
                                        "path":"HIV_HEP",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Recent health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Other",
                                "path":"Health_Other",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 2 years have you:",
                                "alias":"Health Other",
                                "triggers":[
                                    "Health Other"
                                ],
                                "questions":[
                                    {
                                        "name":"TREATMENT",
                                        "path":"TREATMENT",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ONGOING_REVIEWS",
                                        "path":"ONGOING_REVIEWS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"INVESTIGATIONS",
                                        "path":"INVESTIGATIONS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":false,
                                "name":"Health_Recent",
                                "path":"Health_Recent",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 3 months have you:",
                                "alias":"Health Recent",
                                "triggers":[
                                    "Health Recent"
                                ],
                                "questions":[
                                    {
                                        "name":"SYMPTOMS",
                                        "path":"SYMPTOMS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Lifestyle",
                                "path":"Lifestyle",
                                "section":"Lifestyle",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Lifestyle",
                                "triggers":[
                                    "Lifestyle"
                                ],
                                "questions":[
                                    {
                                        "name":"PURSUITS",
                                        "path":"PURSUITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MOTOR_BIKE",
                                        "path":"MOTOR_BIKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRIVING_BAN",
                                        "path":"DRIVING_BAN",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TRAVEL",
                                        "path":"TRAVEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle continued...",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Alcohol_Drugs",
                                "path":"Alcohol_Drugs",
                                "section":"Lifestyle continued...",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Alcohol Drugs",
                                "triggers":[
                                    "Alcohol Drugs"
                                ],
                                "questions":[
                                    {
                                        "name":"ALCOHOL_BEER",
                                        "path":"ALCOHOL_BEER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_WINE",
                                        "path":"ALCOHOL_WINE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_SPIRITS",
                                        "path":"ALCOHOL_SPIRITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_OTHER",
                                        "path":"ALCOHOL_OTHER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_ADVICE",
                                        "path":"ALCOHOL_ADVICE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRUGS",
                                        "path":"DRUGS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    }
                ],
                "optionBuckets":{
                    "InsurerX":[

                    ],
                    "PLR":[

                    ]
                },
                "numericBuckets":{
                    "InsurerX":[

                    ],
                    "PLR":[

                    ]
                },
                "allAnswers":{
                    "PRODUCT":[
                        "Life"
                    ],
                    "GENDER":[
                        "Male"
                    ],
                    "BIRTHDATE":[
                        "01/01/1990"
                    ],
                    "SMOKING":[
                        "Non-smoker"
                    ],
                    "SALES_CHANNEL":[
                        "Telephone"
                    ],
                    "IP_DEFERRED_PERIOD":[

                    ],
                    "TOTAL_LIFE_COVER":[
                        "120000"
                    ],
                    "HEIGHT":[
                        "1.82"
                    ],
                    "OCCUPATION":[
                        "None"
                    ],
                    "WEIGHT_MALE":[
                        "Too much"
                    ],
                    "NON_SMOKER_STATUS":[
                        "Don't smoke"
                    ],
                    "FAMILY_HISTORY_LIFE":[
                        "Don't know"
                    ],
                    "DIABETES":[

                    ],
                    "LUNG":[

                    ],
                    "BOWEL":[

                    ],
                    "LIVER":[

                    ],
                    "BP_LIPID_CHEST":[

                    ],
                    "MENTAL_MINOR":[

                    ],
                    "KIDNEY_MALE":[

                    ],
                    "NEURO":[

                    ],
                    "MENTAL_SERIOUS":[

                    ],
                    "CANCER":[

                    ],
                    "HEART":[

                    ],
                    "STROKE":[

                    ],
                    "HIV_HEP":[

                    ],
                    "TREATMENT":[

                    ],
                    "ONGOING_REVIEWS":[

                    ],
                    "INVESTIGATIONS":[

                    ],
                    "SYMPTOMS":[

                    ],
                    "MOTOR_BIKE":[

                    ],
                    "DRIVING_BAN":[

                    ],
                    "TRAVEL":[

                    ],
                    "PURSUITS":[

                    ],
                    "ALCOHOL_BEER":[

                    ],
                    "ALCOHOL_WINE":[

                    ],
                    "ALCOHOL_SPIRITS":[

                    ],
                    "ALCOHOL_OTHER":[

                    ],
                    "ALCOHOL_ADVICE":[

                    ],
                    "DRUGS":[

                    ]
                }
            }

+ Request Satisfy one Enquiry section. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "HEIGHT":"1.82",
                "WEIGHT_MALE":"81",
                "NON_SMOKER_STATUS":"Life-long non smoker",
                "OCCUPATION":"Programmer",
                "FAMILY_HISTORY_LIFE":"None of these"
            }

+ Response 200

            {
                "enquiryId":"029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "branch":"trunk",
                "tag":"bootstrap",
                "isVoid":false,
                "isOpen":true,
                "isSatisfied":false,
                "sections":[
                    {
                        "name":"Your Basic Details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Your_Basic_Details",
                                "path":"Your_Basic_Details",
                                "section":"Your Basic Details",
                                "preamble":"Please tell us your basic quote information",
                                "alias":"Your Basic Details",
                                "triggers":[
                                    "Your Basic Details"
                                ],
                                "questions":[
                                    {
                                        "name":"PRODUCT",
                                        "path":"PRODUCT",
                                        "answers":[
                                            "Life"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TOTAL_LIFE_COVER",
                                        "path":"TOTAL_LIFE_COVER",
                                        "answers":[
                                            "120000"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"GENDER",
                                        "path":"GENDER",
                                        "answers":[
                                            "Male"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BIRTHDATE",
                                        "path":"BIRTHDATE",
                                        "answers":[
                                            "01/01/1990"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SMOKING",
                                        "path":"SMOKING",
                                        "answers":[
                                            "Non-smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SALES_CHANNEL",
                                        "path":"SALES_CHANNEL",
                                        "answers":[
                                            "Telephone"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Personal details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Key_Info",
                                "path":"Key_Info",
                                "section":"Personal details",
                                "preamble":"Please tell us some things about yourself:",
                                "alias":"Key Info",
                                "triggers":[
                                    "Key Info"
                                ],
                                "questions":[
                                    {
                                        "name":"HEIGHT",
                                        "path":"HEIGHT",
                                        "answers":[
                                            "1.82"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"WEIGHT_MALE",
                                        "path":"WEIGHT_MALE",
                                        "answers":[
                                            "81"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NON_SMOKER_STATUS",
                                        "path":"NON_SMOKER_STATUS",
                                        "answers":[
                                            "Life-long non smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"OCCUPATION",
                                        "path":"OCCUPATION",
                                        "answers":[
                                            "Programmer"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"FAMILY_HISTORY_LIFE",
                                        "path":"FAMILY_HISTORY_LIFE",
                                        "answers":[
                                            "None of these"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Tobacco_Use",
                                "path":"Tobacco_Use",
                                "section":"Personal details",
                                "preamble":"Please tell us more about your tobacco use",
                                "alias":"Tobacco Use",
                                "triggers":[
                                    "Tobacco Use"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Last 5 year's health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Detailed_Medical",
                                "path":"Detailed_Medical",
                                "section":"Last 5 year's health",
                                "preamble":"In the last 5 years have you had:",
                                "alias":"Detailed Medical",
                                "triggers":[
                                    "Detailed Medical"
                                ],
                                "questions":[
                                    {
                                        "name":"BP_LIPID_CHEST",
                                        "path":"BP_LIPID_CHEST",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DIABETES",
                                        "path":"DIABETES",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MENTAL_MINOR",
                                        "path":"MENTAL_MINOR",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LUNG",
                                        "path":"LUNG",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BOWEL",
                                        "path":"BOWEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"KIDNEY_MALE",
                                        "path":"KIDNEY_MALE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LIVER",
                                        "path":"LIVER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NEURO",
                                        "path":"NEURO",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Have you ever had",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Major",
                                "path":"Health_Major",
                                "section":"Have you ever had",
                                "preamble":"Have you ever had:",
                                "alias":"Health Major",
                                "triggers":[
                                    "Health Major"
                                ],
                                "questions":[
                                    {
                                        "name":"MENTAL_SERIOUS",
                                        "path":"MENTAL_SERIOUS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"CANCER",
                                        "path":"CANCER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HEART",
                                        "path":"HEART",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"STROKE",
                                        "path":"STROKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HIV_HEP",
                                        "path":"HIV_HEP",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Recent health",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Health_Other",
                                "path":"Health_Other",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 2 years have you:",
                                "alias":"Health Other",
                                "triggers":[
                                    "Health Other"
                                ],
                                "questions":[
                                    {
                                        "name":"TREATMENT",
                                        "path":"TREATMENT",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ONGOING_REVIEWS",
                                        "path":"ONGOING_REVIEWS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"INVESTIGATIONS",
                                        "path":"INVESTIGATIONS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":false,
                                "name":"Health_Recent",
                                "path":"Health_Recent",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 3 months have you:",
                                "alias":"Health Recent",
                                "triggers":[
                                    "Health Recent"
                                ],
                                "questions":[
                                    {
                                        "name":"SYMPTOMS",
                                        "path":"SYMPTOMS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Lifestyle",
                                "path":"Lifestyle",
                                "section":"Lifestyle",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Lifestyle",
                                "triggers":[
                                    "Lifestyle"
                                ],
                                "questions":[
                                    {
                                        "name":"PURSUITS",
                                        "path":"PURSUITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MOTOR_BIKE",
                                        "path":"MOTOR_BIKE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRIVING_BAN",
                                        "path":"DRIVING_BAN",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TRAVEL",
                                        "path":"TRAVEL",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Build",
                                "path":"Build",
                                "section":"Lifestyle",
                                "preamble":"Please tell us more about your Build",
                                "alias":"Build",
                                "triggers":[
                                    "Build"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"BMI",
                                            "contributions":[
                                                {
                                                    "value":24
                                                }
                                            ],
                                            "min":24,
                                            "max":24,
                                            "sum":24
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"BMI",
                                            "contributions":[
                                                {
                                                    "value":24
                                                }
                                            ],
                                            "min":24,
                                            "max":24,
                                            "sum":24
                                        }
                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle continued...",
                        "isSatisfied":false,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":false,
                                "name":"Alcohol_Drugs",
                                "path":"Alcohol_Drugs",
                                "section":"Lifestyle continued...",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Alcohol Drugs",
                                "triggers":[
                                    "Alcohol Drugs"
                                ],
                                "questions":[
                                    {
                                        "name":"ALCOHOL_BEER",
                                        "path":"ALCOHOL_BEER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_WINE",
                                        "path":"ALCOHOL_WINE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_SPIRITS",
                                        "path":"ALCOHOL_SPIRITS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_OTHER",
                                        "path":"ALCOHOL_OTHER",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_ADVICE",
                                        "path":"ALCOHOL_ADVICE",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRUGS",
                                        "path":"DRUGS",
                                        "answers":[

                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Your Occupation",
                        "isSatisfied":true,
                        "hasQuestions":false,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Occupation_General",
                                "path":"Occupation_General",
                                "section":"Your Occupation",
                                "preamble":"Please tell us more about your occupation",
                                "alias":"Occupation General",
                                "triggers":[
                                    "Occupation General"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"PM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"PM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    }
                ],
                "optionBuckets":{
                    "InsurerX":[
                        {
                            "name":"DECISION_LIFE",
                            "contributions":[
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                }
                            ],
                            "min":"STANDARD",
                            "max":"STANDARD"
                        }
                    ],
                    "PLR":[
                        {
                            "name":"DECISION_LIFE",
                            "contributions":[
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                }
                            ],
                            "min":"STANDARD",
                            "max":"STANDARD"
                        }
                    ]
                },
                "numericBuckets":{
                    "InsurerX":[
                        {
                            "name":"PM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"BMI",
                            "contributions":[
                                {
                                    "value":24
                                }
                            ],
                            "min":24,
                            "max":24,
                            "sum":24
                        }
                    ],
                    "PLR":[
                        {
                            "name":"PM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"BMI",
                            "contributions":[
                                {
                                    "value":24
                                }
                            ],
                            "min":24,
                            "max":24,
                            "sum":24
                        }
                    ]
                },
                "allAnswers":{
                    "PRODUCT":[
                        "Life"
                    ],
                    "GENDER":[
                        "Male"
                    ],
                    "BIRTHDATE":[
                        "01/01/1990"
                    ],
                    "SMOKING":[
                        "Non-smoker"
                    ],
                    "SALES_CHANNEL":[
                        "Telephone"
                    ],
                    "IP_DEFERRED_PERIOD":[

                    ],
                    "TOTAL_LIFE_COVER":[
                        "120000"
                    ],
                    "HEIGHT":[
                        "1.82"
                    ],
                    "OCCUPATION":[
                        "Programmer"
                    ],
                    "WEIGHT_MALE":[
                        "81"
                    ],
                    "NON_SMOKER_STATUS":[
                        "Life-long non smoker"
                    ],
                    "FAMILY_HISTORY_LIFE":[
                        "None of these"
                    ],
                    "DIABETES":[

                    ],
                    "LUNG":[

                    ],
                    "BOWEL":[

                    ],
                    "LIVER":[

                    ],
                    "BP_LIPID_CHEST":[

                    ],
                    "MENTAL_MINOR":[

                    ],
                    "KIDNEY_MALE":[

                    ],
                    "NEURO":[

                    ],
                    "MENTAL_SERIOUS":[

                    ],
                    "CANCER":[

                    ],
                    "HEART":[

                    ],
                    "STROKE":[

                    ],
                    "HIV_HEP":[

                    ],
                    "TREATMENT":[

                    ],
                    "ONGOING_REVIEWS":[

                    ],
                    "INVESTIGATIONS":[

                    ],
                    "SYMPTOMS":[

                    ],
                    "MOTOR_BIKE":[

                    ],
                    "DRIVING_BAN":[

                    ],
                    "TRAVEL":[

                    ],
                    "PURSUITS":[

                    ],
                    "ALCOHOL_BEER":[

                    ],
                    "ALCOHOL_WINE":[

                    ],
                    "ALCOHOL_SPIRITS":[

                    ],
                    "ALCOHOL_OTHER":[

                    ],
                    "ALCOHOL_ADVICE":[

                    ],
                    "DRUGS":[

                    ]
                }
            }

+ Request Satisfy whole Enquiry. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "HEIGHT":[
                    "1.94"
                ],
                "OCCUPATION":[
                    "Programmer"
                ],
                "WEIGHT_MALE":[
                    "83"
                ],
                "NON_SMOKER_STATUS":[
                    "Life-long non smoker"
                ],
                "FAMILY_HISTORY_LIFE":[
                    "None of these"
                ],
                "DIABETES":[
                    "No"
                ],
                "LUNG":[
                    "No"
                ],
                "BOWEL":[
                    "No"
                ],
                "LIVER":[
                    "No"
                ],
                "BP_LIPID_CHEST":[
                    "No"
                ],
                "MENTAL_MINOR":[
                    "No"
                ],
                "KIDNEY_MALE":[
                    "No"
                ],
                "NEURO":[
                    "No"
                ],
                "MENTAL_SERIOUS":[
                    "No"
                ],
                "CANCER":[
                    "No"
                ],
                "HEART":[
                    "No"
                ],
                "STROKE":[
                    "No"
                ],
                "HIV_HEP":[
                    "No"
                ],
                "TREATMENT":[
                    "No"
                ],
                "ONGOING_REVIEWS":[
                    "No"
                ],
                "INVESTIGATIONS":[
                    "No"
                ],
                "SYMPTOMS":[
                    "No"
                ],
                "MOTOR_BIKE":[
                    "No"
                ],
                "DRIVING_BAN":[
                    "No"
                ],
                "TRAVEL":[
                    "Neither"
                ],
                "PURSUITS":[
                    "None of these"
                ],
                "ALCOHOL_BEER":[
                    "0"
                ],
                "ALCOHOL_WINE":[
                    "0"
                ],
                "ALCOHOL_SPIRITS":[
                    "0"
                ],
                "ALCOHOL_OTHER":[
                    "0"
                ],
                "ALCOHOL_ADVICE":[
                    "No"
                ],
                "DRUGS":[
                    "No"
                ]
            }

+ Response 200

            {
                "enquiryId":"029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "branch":"trunk",
                "tag":"bootstrap",
                "isVoid":false,
                "isOpen":true,
                "isSatisfied":true,
                "sections":[
                    {
                        "name":"Your Basic Details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Your_Basic_Details",
                                "path":"Your_Basic_Details",
                                "section":"Your Basic Details",
                                "preamble":"Please tell us your basic quote information",
                                "alias":"Your Basic Details",
                                "triggers":[
                                    "Your Basic Details"
                                ],
                                "questions":[
                                    {
                                        "name":"PRODUCT",
                                        "path":"PRODUCT",
                                        "answers":[
                                            "Life"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TOTAL_LIFE_COVER",
                                        "path":"TOTAL_LIFE_COVER",
                                        "answers":[
                                            "120000"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"GENDER",
                                        "path":"GENDER",
                                        "answers":[
                                            "Male"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BIRTHDATE",
                                        "path":"BIRTHDATE",
                                        "answers":[
                                            "01/01/1990"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SMOKING",
                                        "path":"SMOKING",
                                        "answers":[
                                            "Non-smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"SALES_CHANNEL",
                                        "path":"SALES_CHANNEL",
                                        "answers":[
                                            "Telephone"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Personal details",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Key_Info",
                                "path":"Key_Info",
                                "section":"Personal details",
                                "preamble":"Please tell us some things about yourself:",
                                "alias":"Key Info",
                                "triggers":[
                                    "Key Info"
                                ],
                                "questions":[
                                    {
                                        "name":"HEIGHT",
                                        "path":"HEIGHT",
                                        "answers":[
                                            "1.94"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"WEIGHT_MALE",
                                        "path":"WEIGHT_MALE",
                                        "answers":[
                                            "83"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NON_SMOKER_STATUS",
                                        "path":"NON_SMOKER_STATUS",
                                        "answers":[
                                            "Life-long non smoker"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"OCCUPATION",
                                        "path":"OCCUPATION",
                                        "answers":[
                                            "Programmer"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"FAMILY_HISTORY_LIFE",
                                        "path":"FAMILY_HISTORY_LIFE",
                                        "answers":[
                                            "None of these"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Tobacco_Use",
                                "path":"Tobacco_Use",
                                "section":"Personal details",
                                "preamble":"Please tell us more about your tobacco use",
                                "alias":"Tobacco Use",
                                "triggers":[
                                    "Tobacco Use"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Last 5 year's health",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Detailed_Medical",
                                "path":"Detailed_Medical",
                                "section":"Last 5 year's health",
                                "preamble":"In the last 5 years have you had:",
                                "alias":"Detailed Medical",
                                "triggers":[
                                    "Detailed Medical"
                                ],
                                "questions":[
                                    {
                                        "name":"BP_LIPID_CHEST",
                                        "path":"BP_LIPID_CHEST",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DIABETES",
                                        "path":"DIABETES",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MENTAL_MINOR",
                                        "path":"MENTAL_MINOR",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LUNG",
                                        "path":"LUNG",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"BOWEL",
                                        "path":"BOWEL",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"KIDNEY_MALE",
                                        "path":"KIDNEY_MALE",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"LIVER",
                                        "path":"LIVER",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"NEURO",
                                        "path":"NEURO",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Have you ever had",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Health_Major",
                                "path":"Health_Major",
                                "section":"Have you ever had",
                                "preamble":"Have you ever had:",
                                "alias":"Health Major",
                                "triggers":[
                                    "Health Major"
                                ],
                                "questions":[
                                    {
                                        "name":"MENTAL_SERIOUS",
                                        "path":"MENTAL_SERIOUS",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"CANCER",
                                        "path":"CANCER",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HEART",
                                        "path":"HEART",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"STROKE",
                                        "path":"STROKE",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"HIV_HEP",
                                        "path":"HIV_HEP",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Recent health",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Health_Other",
                                "path":"Health_Other",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 2 years have you:",
                                "alias":"Health Other",
                                "triggers":[
                                    "Health Other"
                                ],
                                "questions":[
                                    {
                                        "name":"TREATMENT",
                                        "path":"TREATMENT",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ONGOING_REVIEWS",
                                        "path":"ONGOING_REVIEWS",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"INVESTIGATIONS",
                                        "path":"INVESTIGATIONS",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Health_Recent",
                                "path":"Health_Recent",
                                "section":"Recent health",
                                "preamble":"Other than for conditions that you have already told us about, in the last 3 months have you:",
                                "alias":"Health Recent",
                                "triggers":[
                                    "Health Recent"
                                ],
                                "questions":[
                                    {
                                        "name":"SYMPTOMS",
                                        "path":"SYMPTOMS",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Lifestyle",
                                "path":"Lifestyle",
                                "section":"Lifestyle",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Lifestyle",
                                "triggers":[
                                    "Lifestyle"
                                ],
                                "questions":[
                                    {
                                        "name":"PURSUITS",
                                        "path":"PURSUITS",
                                        "answers":[
                                            "None of these"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"MOTOR_BIKE",
                                        "path":"MOTOR_BIKE",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"DRIVING_BAN",
                                        "path":"DRIVING_BAN",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"TRAVEL",
                                        "path":"TRAVEL",
                                        "answers":[
                                            "Neither"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Build",
                                "path":"Build",
                                "section":"Lifestyle",
                                "preamble":"Please tell us more about your Build",
                                "alias":"Build",
                                "triggers":[
                                    "Build"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"BMI",
                                            "contributions":[
                                                {
                                                    "value":22
                                                }
                                            ],
                                            "min":22,
                                            "max":22,
                                            "sum":22
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"BMI",
                                            "contributions":[
                                                {
                                                    "value":22
                                                }
                                            ],
                                            "min":22,
                                            "max":22,
                                            "sum":22
                                        }
                                    ]
                                },
                                "isWrapUpLine":false
                            },
                            {
                                "isSatisfied":true,
                                "name":"Alcohol",
                                "path":"Alcohol",
                                "section":"Lifestyle",
                                "preamble":"Please tell us more about your drinking habits",
                                "alias":"Alcohol",
                                "triggers":[
                                    "Alcohol"
                                ],
                                "questions":[
                                    {
                                        "name":"ALCOHOL_ADVICE",
                                        "path":"ALCOHOL_ADVICE",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_OTHER",
                                        "path":"ALCOHOL_OTHER",
                                        "answers":[
                                            "0"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_SPIRITS",
                                        "path":"ALCOHOL_SPIRITS",
                                        "answers":[
                                            "0"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_WINE",
                                        "path":"ALCOHOL_WINE",
                                        "answers":[
                                            "0"
                                        ],
                                        "validationErrors":{

                                        }
                                    },
                                    {
                                        "name":"ALCOHOL_BEER",
                                        "path":"ALCOHOL_BEER",
                                        "answers":[
                                            "0"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"EQUIVALENT_UNITS",
                                            "contributions":[
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"EQUIVALENT_UNITS",
                                            "contributions":[
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                },
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Lifestyle continued...",
                        "isSatisfied":true,
                        "hasQuestions":true,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Alcohol_Drugs",
                                "path":"Alcohol_Drugs",
                                "section":"Lifestyle continued...",
                                "preamble":"Please tell us some general things about your lifestyle:",
                                "alias":"Alcohol Drugs",
                                "triggers":[
                                    "Alcohol Drugs"
                                ],
                                "questions":[
                                    {
                                        "name":"DRUGS",
                                        "path":"DRUGS",
                                        "answers":[
                                            "No"
                                        ],
                                        "validationErrors":{

                                        }
                                    }
                                ],
                                "hasQuestions":true,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"Your Occupation",
                        "isSatisfied":true,
                        "hasQuestions":false,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"Occupation_General",
                                "path":"Occupation_General",
                                "section":"Your Occupation",
                                "preamble":"Please tell us more about your occupation",
                                "alias":"Occupation General",
                                "triggers":[
                                    "Occupation General"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"PM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"PM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ]
                                },
                                "isWrapUpLine":false
                            }
                        ]
                    },
                    {
                        "name":"CV",
                        "isSatisfied":true,
                        "hasQuestions":false,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"CV_Risk_Calculator_Life",
                                "path":"CV_Risk_Calculator_Life",
                                "section":"CV",
                                "alias":"CV Risk Calculator Life",
                                "triggers":[
                                    "CV Risk Calculator Life"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"DECISION_LIFE",
                                            "contributions":[
                                                {
                                                    "value":"STANDARD"
                                                }
                                            ],
                                            "min":"STANDARD",
                                            "max":"STANDARD"
                                        }
                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "isWrapUpLine":true
                            }
                        ]
                    },
                    {
                        "isSatisfied":true,
                        "hasQuestions":false,
                        "enquiryLines":[
                            {
                                "isSatisfied":true,
                                "name":"EM_Rounding",
                                "path":"EM_Rounding",
                                "alias":"EM Rounding",
                                "triggers":[
                                    "EM Rounding"
                                ],
                                "hasQuestions":false,
                                "optionBuckets":{
                                    "InsurerX":[

                                    ],
                                    "PLR":[

                                    ]
                                },
                                "numericBuckets":{
                                    "InsurerX":[
                                        {
                                            "name":"EM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ],
                                    "PLR":[
                                        {
                                            "name":"EM_LIFE",
                                            "contributions":[
                                                {
                                                    "value":0
                                                }
                                            ],
                                            "min":0,
                                            "max":0,
                                            "sum":0
                                        }
                                    ]
                                },
                                "isWrapUpLine":true
                            }
                        ]
                    }
                ],
                "optionBuckets":{
                    "InsurerX":[
                        {
                            "name":"DECISION_LIFE",
                            "contributions":[
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                }
                            ],
                            "min":"STANDARD",
                            "max":"STANDARD"
                        }
                    ],
                    "PLR":[
                        {
                            "name":"DECISION_LIFE",
                            "contributions":[
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                },
                                {
                                    "value":"STANDARD"
                                }
                            ],
                            "min":"STANDARD",
                            "max":"STANDARD"
                        }
                    ]
                },
                "numericBuckets":{
                    "InsurerX":[
                        {
                            "name":"PM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"BMI",
                            "contributions":[
                                {
                                    "value":22
                                }
                            ],
                            "min":22,
                            "max":22,
                            "sum":22
                        },
                        {
                            "name":"EQUIVALENT_UNITS",
                            "contributions":[
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"EM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        }
                    ],
                    "PLR":[
                        {
                            "name":"PM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"BMI",
                            "contributions":[
                                {
                                    "value":22
                                }
                            ],
                            "min":22,
                            "max":22,
                            "sum":22
                        },
                        {
                            "name":"EQUIVALENT_UNITS",
                            "contributions":[
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                },
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        },
                        {
                            "name":"EM_LIFE",
                            "contributions":[
                                {
                                    "value":0
                                }
                            ],
                            "min":0,
                            "max":0,
                            "sum":0
                        }
                    ]
                },
                "allAnswers":{
                    "PRODUCT":[
                        "Life"
                    ],
                    "GENDER":[
                        "Male"
                    ],
                    "BIRTHDATE":[
                        "01/01/1990"
                    ],
                    "SMOKING":[
                        "Non-smoker"
                    ],
                    "SALES_CHANNEL":[
                        "Telephone"
                    ],
                    "IP_DEFERRED_PERIOD":[

                    ],
                    "TOTAL_LIFE_COVER":[
                        "120000"
                    ],
                    "HEIGHT":[
                        "1.94"
                    ],
                    "OCCUPATION":[
                        "Programmer"
                    ],
                    "WEIGHT_MALE":[
                        "83"
                    ],
                    "NON_SMOKER_STATUS":[
                        "Life-long non smoker"
                    ],
                    "FAMILY_HISTORY_LIFE":[
                        "None of these"
                    ],
                    "DIABETES":[
                        "No"
                    ],
                    "LUNG":[
                        "No"
                    ],
                    "BOWEL":[
                        "No"
                    ],
                    "LIVER":[
                        "No"
                    ],
                    "BP_LIPID_CHEST":[
                        "No"
                    ],
                    "MENTAL_MINOR":[
                        "No"
                    ],
                    "KIDNEY_MALE":[
                        "No"
                    ],
                    "NEURO":[
                        "No"
                    ],
                    "MENTAL_SERIOUS":[
                        "No"
                    ],
                    "CANCER":[
                        "No"
                    ],
                    "HEART":[
                        "No"
                    ],
                    "STROKE":[
                        "No"
                    ],
                    "HIV_HEP":[
                        "No"
                    ],
                    "TREATMENT":[
                        "No"
                    ],
                    "ONGOING_REVIEWS":[
                        "No"
                    ],
                    "INVESTIGATIONS":[
                        "No"
                    ],
                    "SYMPTOMS":[
                        "No"
                    ],
                    "MOTOR_BIKE":[
                        "No"
                    ],
                    "DRIVING_BAN":[
                        "No"
                    ],
                    "TRAVEL":[
                        "Neither"
                    ],
                    "PURSUITS":[
                        "None of these"
                    ],
                    "ALCOHOL_BEER":[
                        "0"
                    ],
                    "ALCOHOL_WINE":[
                        "0"
                    ],
                    "ALCOHOL_SPIRITS":[
                        "0"
                    ],
                    "ALCOHOL_OTHER":[
                        "0"
                    ],
                    "ALCOHOL_ADVICE":[
                        "No"
                    ],
                    "DRUGS":[
                        "No"
                    ]
                }
            }
