## Read [/application/{applicationId}/customer]
Operations on existing Customers associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve existing Customers for the Application [GET]
+ Request Retrieve existing Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            "customers": [
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
                },
                {
                    "id": "1002",
                    "referenceId": "cus-002",
                    "enquiryId": "029ab9d8-0a52-a23e-7e54-7a8d505bb742",
                    "name": "Merry",
                    "surname": "Jones",
                    "title": "DR",
                    "gender": "FEMALE",
                    "dateOfBirth": "1970-01-01",
                    "smoker": false,
                    "email": "merry.jones@domain.com"
                }
            ]

+ Request Not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
