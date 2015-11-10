## Document [/api/application/{applicationId}/basket/document]
Generate new Basket comparison document associated with Application.

JSON response has following structure:

- ***id*** `string` *(required)* - Unique ID of the document.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Request Generation of new Basket comparison document associated with Application [POST]
+ Request Generation of new Basket comparison document associated with Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 202


            {
                "id":"b9466af5-7a0f-448f-84ec-bfe2156b1423"
            }

+ Request Generation of new Basket comparison document for non existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Generation of new Basket comparison document for Application without Products in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
