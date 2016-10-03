## Third Party Marketing Preference [/application/{applicationId}/customer/{customerId}/marketing-preference/third-party]
Operations on Third Party Marketing Preference associated with Application Customer.

Activation will not be possible without giving an answer this Marketing Preference.

JSON request and response have following structure:

- _**question**_ `string` *(required)* - Declaration question text.
- _**helpText**_ `string` *(required)* - Declaration question text.
- _**answer**_ `boolean` *(optional)* - Answer to Marketing Preference. If not available it means answer was not given (nor `true` or `false`).

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + customerId (required, string, `1234`) ... Unique ID of existing Customer.

### Retrieve Third Party Marketing Preference [GET]
+ Request Read Customer's Third Party Marketing Preference. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Your insurer may also share your information with carefully selected third parties, who may contact you to let you know about products and services which they believe may be of interest to you.",
                "helpText": "If you wish to receive this information please select yes to confirm you are happy to hear from them."
            }

+ Request Read Customer's Third Party Marketing Preference set to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "Your insurer may also share your information with carefully selected third parties, who may contact you to let you know about products and services which they believe may be of interest to you.",
                "helpText": "If you wish to receive this information please select yes to confirm you are happy to hear from them.",
                "answer": true
            }

### Update Third Party Marketing Preference [PUT]
+ Request Update Customer's Third Party Marketing Preference to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answer": true
            }

+ Response 200

            {
                "question": "Your insurer may also share your information with carefully selected third parties, who may contact you to let you know about products and services which they believe may be of interest to you.",
                "helpText": "If you wish to receive this information please select yes to confirm you are happy to hear from them.",
                "answer": true
            }
