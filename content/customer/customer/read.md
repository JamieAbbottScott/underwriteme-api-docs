## Existing [/application/{existingApplicationId}/customer/{customerId}]
Operations on existing Customer identified by unique ID associated with Application.

+ Parameters

    + existingApplicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + customerId  (required, string, `1502181407123020689`) ... Unique ID of existing Customer.

### Retrieve existing Customer for the Application [GET]
+ Request Retrieve existing Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "id": "1001",
                "referenceId": "cus-001",
                "enquiryId": "029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "name": "John",
                "surname": "Doe",
                "title": "MR",
                "gender": "MALE",
                "dateOfBirth": "1980-01-01",
                "smoker": false,
                "email": "john.doe@domain.com"
            }

+ Request Not existing Customer for the Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
