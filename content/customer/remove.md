## Delete [/application/{applicationId}/customer/{id}]
Operations on Customer associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + id (required, string, `plr-eae35b32-4841-4620-aed4-d06cf1cf8057`) ... Unique ID of existing Customer.

### Remove Customer from Application [DELETE]
+ Request Removing Customer from not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Removing not existing Customer from Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Removing valid Customer from Application. (application/json)

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

