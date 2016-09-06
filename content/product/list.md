## List [/application/{id}/product{?lifeAssured}]
Operations on existing Products and Customer associated with Application identified by unique ID.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + lifeAssured  (required, string, `1502181407123020689`) ... Optional unique ID of existing Life Assured for Customer.

### Retrieve existing Products associated with Customer for the Application [GET]
+ Request Retrieve existing Product for Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            [
                {
                    "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                    "referenceId": "pro-001",
                    "type": "TERM",
                    "coverBasis": "LEVEL",
                    "coverPeriod": 20,
                    "coverAmount": 120000,
                    "commissionSacrifice": {
                        "initial": 10,
                        "renewal": 1.0,
                        "nilBased": false
                    },
                    "livesAssured": [
                        { "refersTo": "1001" }
                    ]
                },
                {
                    "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                    "referenceId": "pro-002",
                    "type": "TERM",
                    "coverBasis": "LEVEL",
                    "coverPeriod": 30,
                    "coverAmount": 130000,
                    "commissionSacrifice": {
                        "initial": 0,
                        "renewal": 1.0,
                        "nilBased": false
                    },
                    "livesAssured": [
                        { "refersTo": "1002" }
                    ]
                }
            ]

+ Request Not existing Products for Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
