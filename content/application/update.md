## Update [/application/{existingApplicationId}]
Updating Payment Basis for existing Application based on JSON data identified by unique ID.

    - ***paymentBasis*** `string` *(required)* - Payment basis. Allowed values: `MONTHLY`, `ANNUAL`.

+ Parameters

    + existingApplicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Update existing Application [PUT]
+ Request Valid Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "paymentBasis": "ANNUAL"
            }

+ Response 200 (application/json)

            {
                "id": "1502181407123020689",
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
                    }
                ],
                "products": [
                    {
                        "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                        "referenceId": "pro-001",
                        "type": "TERM",
                        "coverBasis": "LEVEL",
                        "coverPeriod": 20,
                        "coverAmount": 120000,
                        "commissionSacrifice": {
                            "initial": 10,
                            "renewal": 1.0
                        },
                        "livesAssured": [
                            { "refersTo": "1001" }
                        ]
                    }
                ],
                "paymentBasis": "ANNUAL"
            }