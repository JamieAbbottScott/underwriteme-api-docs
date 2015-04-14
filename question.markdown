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
