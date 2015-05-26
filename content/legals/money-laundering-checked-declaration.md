## Money Laundering Checked Declaration [/application/{applicationId}/declaration/money-laundering-checked]
Operations on Money Laundering Checked Declaration associated with Application.

Activation will not be possible without giving an answer to this Declaration.

JSON request and response have following structure:

- ***question*** `string` *(required)* - Declaration question text.
- ***answer*** `boolean` *(optional)* - Answer to Declaration. If not available it means answer was not given (nor `true` or `false`).

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Money Laundering Checked Declaration [GET]
+ Request Read Money Laundering Checked Declaration. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Have you completed any necessary money laundering checks?"
            }

+ Request Read Money Laundering Checked Declaration set to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Have you completed any necessary money laundering checks?",
                "answer": true
            }

### Update Money Laundering Checked Declaration [PUT]
+ Request Update Money Laundering Checked Declaration to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answer": true
            }

+ Response 200

            {
                "question": "Have you completed any necessary money laundering checks?",
                "answer": true
            }
