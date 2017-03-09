## Apply manual decision to an application [/application/{id}/manual-decision]
### Apply Manual Decision. [PUT]
+ Apply Manual Decision. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "externalId": "44",
                "lives": [
                    {
                        "externalId": 58,
                        "automatedDecisionEnquiryId": "64d7754a-1615-4dfb-beff-4eed6ee5456d",
                        "manualDecisionEnquiryId": "64d7754a-1615-4dfb-beff-4eed6ee5456d_ManualDecision"
                    }
                ],
                "products": [
                    {
                        "externalId": "d74e4b68-25c4-4f48-b7f6-639423cba415",
                        "lives": [
                            58
                        ]
                    }
                ]
            }

+ Response 200 (application/json)

            {
                "externalId": "44",
                "lives": [
                    {
                        "externalId": 58,
                        "automatedDecisionEnquiryId": "64d7754a-1615-4dfb-beff-4eed6ee5456d",
                        "manualDecisionEnquiryId": "64d7754a-1615-4dfb-beff-4eed6ee5456d_ManualDecision"
                    }
                ],
                "products": [
                    {
                        "externalId": "d74e4b68-25c4-4f48-b7f6-639423cba415",
                        "lives": [
                            58
                        ]
                    }
                ]
            }
