## List [/api/application/{applicationId}/activation]
Operations on existing Activation associated with Application.

JSON response has following structure:

- _**items**_ `array` *(required)* - List of Activation Items (represented as `object` type).
    - _**providerInfo**_ `object` *(required)* - Information specific to the Provider.
        - _**provider**_ `string` *(required)* - Unique ID of existing Provider.
        - _**policyNumber**_ `string` *(optional)* - Unique provider specific policy number.
        - _**amraDocumentLink**_ `string` *(optional)* - Access to Medical Records Act 1998 (AMRA) document URL.
    - _**product**_ `object` *(required)* - Application Product properties created at the beginning of the underwriting process.
        - _**id**_ `string` *(required)* - Unique Product ID.
        - _**referenceId**_ `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
        - _**type**_ `string` *(required)* - Product type. Possible values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
        - _**coverAmount**_ `number` *(required/optional)* - Product cover amount. Available if _**premium**_ not specified.
        - _**premium**_ `number` *(required/optional)* - Product premium. Available if _**coverAmount**_ not specified.
        - _**premiumBasis**_ `string` *(required/optional)* - Product premium basis. Available if _**type**_ is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Possible values: `GUARANTEED`, `REVIEWABLE`.
        - _**coverPeriod**_ `number` *(required/optional)* - Product cover period in years. Available if _**coverUntilAge**_ not specified.
        - _**coverUntilAge**_ `number` *(required/optional)* - Product cover until age in years. Available if _**coverPeriod**_ not specified.
        - _**coverBasis**_ `string` *(required)* - Product cover basis. Possible values: `DECREASING`, `LEVEL`, `INCREASING`.
        - _**extendedCoverType**_ `number` *(optional)* - Product extended cover type. Available if _**type**_ is `INCOME_PROTECTION`. Possible values: `FULL`, `BUDGET`. `FULL` is used by default if no value is specified.
        - _**deferredPeriodInWeeks**_ `number` *(required/optional)* - Product deferred period in weeks. Available if _**type**_ is `INCOME_PROTECTION`. Possible values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
        - _**livesAssured**_ `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
            - _**name**_ `string` *(required)* - Customer name.
            - _**surname**_ `string` *(required)* - Customer surname.
            - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer.
            - _**waiverOfPremium**_ `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
            - _**determinesCeaseAge**_ `boolean` *(optional)* - Flag to mark which customer determines the cease age.
            - _**totalPermanentDisability**_ `boolean` *(optional)* - Flag to mark total permanent disability for Customer.
        - _**includesChildrensCI**_ `string` *(optional)* - Identifies if the product includes Critical Illness for children. This is only returned for Critical Illness type of products. Possible values: `YES` or `NO`.
    - _**status**_ `object` *(required)* - Information about the activation process
        - _**state**_ `string` *(required)* - Activation state. Possible values: `PENDING`, `SUCCEEDED`, `FAILED`.
        - _**successMessage**_ `string` *(required/optional)* - Provider specific success message. Available if _**state**_ is `SUCCEEDED`.
        - _**errors**_ `array` *(required/optional)* - Provider specific error messages. Available if _**state**_ is `FAILED`.
            - _**reason**_ `string` *(required)* - Reason of the error.
            - _**description**_ `string` *(optional)* - Detailed description of the error.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Request Activation [PUT]
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
                            "state":"PENDING"
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
                            "state":"PENDING"
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

+ Response 400

            {
                "errorMessage":"Cannot activate application with estimated provider product in the basket"
            }

+ Request Activation for Application with expired products in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 400

            {
                "errorMessage":"Cannot activate application with expired or invalid provider product in the basket"
            }

+ Request Activation for Application without Payment Details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 400

            {
                "errorMessage":"Cannot activate application if there are no payment details"
            }

+ Request Activation for Application without required Doctor Details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 400

            {
                "errorMessage":"Cannot activate application if there are no required doctor details"
            }

+ Request Activation for Application without Legals confirmed. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 400

            {
                "errorMessage":"Cannot activate application if legals are not confirmed"
            }

+ Request Activation for an already activated Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 400

            {
                "errorMessage":"Cannot activate an already activated application"
            }

### Retrieve Activation [GET]
+ Request Retrieve Activation. (application/json)

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
