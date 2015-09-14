## Read [/application/{id}/payment/restriction]
Read Payment details restriction for Provider Product associated with Application.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Payment details restriction for Provider Product [GET]
+ Request Retrieve existing Payment details restriction for Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "paymentDays": [
                    {
                        "dayOfMonth": {
                            "required": true
                        },
                        "provider": "PLR"
                    }
                ],
                "startDates": [
                    {
                        "basis": {
                            "required": false
                        },
                        "provider": "PLR",
                        "date": {
                            "required": true
                        },
                        "refersTo": "plr-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "productId": "1f1cd0a4-fb06-431a-8c57-bcf61596dac2"
                    }
                ],
                "bankAccount": {
                    "holders": {
                        "max": 2
                    }
                }
            }

+ Request Not existing Payment details restriction. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
