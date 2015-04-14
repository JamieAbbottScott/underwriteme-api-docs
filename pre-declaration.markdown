# Group Pre-Declaration
Pre-Declaration related resources of the **UnderwriteMe API**.

## Existing [/application/{applicationId}/enquiry/{enquiryId}/pre-declaration]
Operations on existing Pre-Declaration associated with Application and Customer Enquiry.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + enquiryId (required, string, `029ab8d8-0a62-423e-8e84-6e8d505bb742`) ... Unique ID of existing Enquiry associated with Application Customer.

### Retrieve Pre-Declaration [GET]
+ Request Valid Pre-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": false,
                "text": "<p>HTML formatted Pre-Declaration text.</p>"
            }

### Confirm Pre-Declaration [PUT]
+ Request Confirm Pre-Declaration (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "confirmed": true,
                "text": "<p>HTML formatted Pre-Declaration text.</p>"
            }
