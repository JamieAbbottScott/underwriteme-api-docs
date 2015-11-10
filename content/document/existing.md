## Existing [/api/application/{applicationId}/document/{documentId}]
Operations on existing Application Document identified by unique Application and Document ID.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + documentId (required, string, `b9466af5-7a0f-448f-84ec-bfe2156b1423`) ... Unique ID of existing Document.

### Retrieve Application Document generation status [HEAD]
+ Request Retrieve Application Document generation status. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200
+ Response 202

### Retrieve Application Document [GET]
+ Request Retrieve Application Document. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            { 
                "response": 
                    {
                        "body": "..."
                    }
            }
            