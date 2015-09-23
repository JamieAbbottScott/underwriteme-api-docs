## Existing [/application/{id}/product/{productId}]
Operations on existing Product identified by unique ID associated with Application.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + productId  (required, string, `1502181407123020689`) ... Unique ID of existing Product.

### Retrieve existing Product for Application [GET]
+ Request Retrieve existing Product. (application/json)

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

+ Request Not existing Product for the Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
