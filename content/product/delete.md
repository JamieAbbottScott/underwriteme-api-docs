## Delete [/application/{applicationId}/product/{existingProductId}]
Operations on Product associated with Application.
**Product will be deleted even if Customer is associated with it.**

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + existingProductId (required, string, `plr-eae35b32-4841-4620-aed4-d06cf1cf8057`) ... Unique ID of existing Product.

### Remove Product from Application [DELETE]
+ Request Removing Product from not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Removing not existing Product from Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Removing valid Product from Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

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
