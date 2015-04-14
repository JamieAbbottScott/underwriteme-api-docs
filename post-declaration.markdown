# Group Post-Declaration
Post-Declaration related resources of the **UnderwriteMe API**.

## Existing [/application/{applicationId}/post-declaration]
Operations on existing Post-Declaration associated with Application.

Post-Declaration can be retrieved and confirmed if all Customer Enquiries are satisfied.

Confirming Post-Declaration means closing all Customer Enquiries. Any changes to Enquiry will require confirming Post-Declaration again.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Post-Declaration [GET]
+ Request Valid Post-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": false,
                "text": "<p>HTML formatted Post-Declaration text.</p>"
            }

### Confirm Post-Declaration [PUT]
+ Request Confirm Post-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": true,
                "text": "<p>HTML formatted Post-Declaration text.</p>"
            }
