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
