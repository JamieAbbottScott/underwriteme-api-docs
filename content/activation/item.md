## Item [/api/application/{applicationId}/activation]
Request Activation. Lists all Basket Items for Application.

JSON response has following structure:

- ***items*** `array` *(required)* - List of Activation Items (represented as `object` type).
- ***providerInfo*** `object` *(required)* - Information specific to the Provider.
    - ***provider*** `string` *(required)* - Unique ID of existing Provider.
    - ***policyNumber*** `string` *(optional)* - Unique provider specific policy number.
    - ***amraDocumentLink*** `string` *(optional)* - Access to Medical Records Act 1998 (AMRA) document URL.
- ***product*** `object` *(required)* - Application Product properties created at the beginning of the underwriting process.
    - ***id*** `string` *(required)* - Unique Product ID.
    - ***referenceId*** `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
    - ***type*** `string` *(required)* - Product type. Possible values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
    - ***coverAmount*** `number` *(required/optional)* - Product cover amount. Available if ***premium*** not specified.
    - ***premium*** `number` *(required/optional)* - Product premium. Available if ***coverAmount*** not specified.
    - ***premiumBasis*** `string` *(required/optional)* - Product premium basis. Available if ***type*** is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Possible values: `GUARANTEED`, `REVIEWABLE`.
    - ***coverPeriod*** `number` *(required/optional)* - Product cover period in years. Available if ***coverUntilAge*** not specified.
    - ***coverUntilAge*** `number` *(required/optional)* - Product cover until age in years. Available if ***coverPeriod*** not specified.
    - ***coverBasis*** `string` *(required)* - Product cover basis. Possible values: `DECREASING`, `LEVEL`, `INCREASING`.
    - ***extendedCoverType*** `number` *(optional)* - Product extended cover type. Available if ***type*** is `INCOME_PROTECTION`. Possible values: `FULL`, `BUDGET`. `FULL` is used by default if no value is specified.
    - ***deferredPeriodInWeeks*** `number` *(required/optional)* - Product deferred period in weeks. Available if ***type*** is `INCOME_PROTECTION`. Possible values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
    - ***livesAssured*** `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
        - ***name*** `string` *(required)* - Customer name.
        - ***surname*** `string` *(required)* - Customer surname.
        - ***refersTo*** `string` *(required)* - Reference to ID of the Customer.
        - ***waiverOfPremium*** `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
        - ***determinesCeaseAge*** `boolean` *(optional)* - Flag to mark which customer determines the cease age.
        - ***totalPermanentDisability*** `boolean` *(optional)* - Flag to mark total permanent disability for Customer.
- ***status*** `object` *(required)* - Information about the activation process
    - ***state*** `string` *(required)* - Activation state. Possible values: `NOT_ATTEMPTED`, `PENDING`, `SUCCEEDED`, `FAILED`.
    - ***successMessage*** `string` *(required/optional)* - Provider specific success message. Available if ***state*** is `SUCCEEDED`.
    - ***errors*** `array` *(required/optional)* - Provider specific error messages. Available if ***state*** is `FAILED`.
        - ***reason*** `string` *(required)* - Reason of the error.
        - ***description*** `string` *(optional)* - Detailed description of the error.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Request Activation of existing Application [PUT]
+ Request Activation of existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "items":[
                    {
                        "providerInfo":{
                            "provider":"INSURER_X",
                            "policyNumber":"987654321",
                            "amraDocumentLink":"http://amra-document-link"
                        },
                        "product":{
                            "id":"eae35b32-4841-4620-aed4-d06cf1cf8057",
                            "referenceId":"pro-001",
                            "type":"TERM",
                            "coverBasis":"DECREASING",
                            "coverPeriod":10,
                            "coverAmount":110000,
                            "livesAssured":[
                                {
                                    "name":"John",
                                    "surname":"Doe",
                                    "refersTo":"4336"
                                }
                            ]
                        },
                        "status":{
                            "state":"SUCCEEDED",
                            "successMessage":"You will receive a full copy of all policy documentation by post to keep for your records."
                        }
                    },
                    {
                        "providerInfo":{
                            "provider":"INSURER_Y"
                        },
                        "product":{
                            "id":"173c6b6d-0381-4e05-a532-895557c9a67a",
                            "referenceId":"pro-002",
                            "type":"CRITICAL_ILLNESS",
                            "coverBasis":"LEVEL",
                            "coverPeriod":20,
                            "coverAmount":100000,
                            "livesAssured":[
                                {
                                    "name":"John",
                                    "surname":"Doe",
                                    "refersTo":"4336"
                                }
                            ]
                        },
                        "status":{
                            "state":"FAILED",
                            "errors":[
                                {
                                    "reason":"Problem with activation call",
                                    "description":"An error occurred while activating the product"
                                }
                            ]
                        }
                    }
                ]
            }

+ Request Activation for not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application without Products in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application with estimated products in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application with expired products in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application without Payment Details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application without required Doctor Details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for Application without Legals confirmed. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Activation for an already activated Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
