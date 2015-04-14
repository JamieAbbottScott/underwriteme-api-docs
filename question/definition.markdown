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
