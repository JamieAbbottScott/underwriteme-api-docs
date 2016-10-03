## Advised Sale Declaration [/application/{applicationId}/declaration/advised-sale]
Operations on Advised Sale Declaration associated with Application.

Activation will not be possible without giving an answer to this Declaration.

JSON request and response have following structure:

- _**question**_ `string` *(required)* - Declaration question text.
- _**answer**_ `boolean` *(optional)* - Answer to Declaration. If not available it means answer was not given (nor `true` or `false`).

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Advised Sale Declaration [GET]
+ Request Read Advised Sale Declaration. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Was this an advised sale?"
            }

+ Request Read Advised Sale Declaration set to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Was this an advised sale?",
                "answer": true
            }

### Update Advised Sale Declaration [PUT]
+ Request Update Advised Sale Declaration to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answer": true
            }

+ Response 200

            {
                "question": "Was this an advised sale?",
                "answer": true
            }
