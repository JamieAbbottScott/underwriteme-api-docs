## List [/api/application/{applicationId}/activation]
Operations on existing Activation associated with Application.

JSON response has following structure:

- ***items*** `array` *(required)* - List of Activation Items (represented as `object` type).
Detailed structure of Activation Item can be found in the following Activation / Item section.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

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
