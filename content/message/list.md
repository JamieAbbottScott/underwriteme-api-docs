## List [/message]


### Retrieve Messages [GET]
+ Request Retrieve all messages (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            [
                {
                    "code": "field.label.postcode",
                    "text": "Postcode:"
                },
                {
                    "code": "api.invalid.postcode",
                    "text": "Value is not a valid postcode (eg. AB1 2CD)"
                }
            ]