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
