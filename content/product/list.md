## List All [/application/{applicationId}/product]
Operations on existing Products associated with Application identified by unique ID .

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve existing Products for the Application [GET]
+ Request Retrieve existing Product. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                        "renewal": 1.0
                    },
                    "livesAssured": [
                        { "refersTo": "1002" }
                    ]
                },
                {
                    "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                    "referenceId": "pro-003",
                    "type": "TERM",
                    "coverBasis": "LEVEL",
                    "coverPeriod": 40,
                    "coverAmount": 140000,
                    "commissionSacrifice": {
                        "initial": 0,
                        "renewal": 1.0
                    },
                    "livesAssured": [
                        { "refersTo": "1003" }
                    ]
                }
            ]

+ Request Not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404


## List For Customer [/application/{applicationId}/product/customer/{customerId}]
Operations on existing Products and Customer associated with Application identified by unique ID .

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + customerId  (required, string, `1502181407123020689`) ... Unique ID of existing Customer.

### Retrieve existing Products associated with Customer for the Application [GET]
+ Request Retrieve existing Product for Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
                        "renewal": 1.0
                    },
                    "livesAssured": [
                        { "refersTo": "1002" }
                    ]
                }
            ]

+ Request Not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
