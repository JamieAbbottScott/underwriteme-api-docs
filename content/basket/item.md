## Item [/application/{applicationId}/basket/item/{itemId}]
Operations on existing Basket associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + itemId (required, string, `plr-eae35b32-4841-4620-aed4-d06cf1cf8057`) ... Unique ID of existing Provider Product.

### Add Item to Basket [POST]
+ Request Retrieve empty Basket (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {}

+ Request Retrieve Basket with one Item (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {
                "items":[
                    { "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057" }
                ]
            }

+ Request Retrieve Basket with two Items (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8


+ Response 200

            {
                "items":[
                    { "id": "plr-eae35b32-4841-4620-aed4-d06cf1cf8057" },
                    { "id": "insurerx-029ab8d8-0a62-423e-8e84-6e8d505bb742" }
                ]
            }
