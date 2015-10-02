### Retrieve Payment Restriction [GET]
+ Request Payment Restriction for Application with one Provider Product in the Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "bankAccount":{
                    "holders":{
                        "max":2
                    }
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":{
                            "required":true
                        }
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "provider":"PLR",
                        "productId":"1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "date":{
                            "required":true
                        },
                        "basis":{
                            "required":false
                        }
                    }
                ]
            }

+ Request Payment Restriction for Application with two Provider Products in the Basket and the number of bank account holders restricted to 1. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "bankAccount":{
                    "holders":{
                        "max":1
                    }
                },
                "paymentDays":[
                    {
                        "provider":"PLR",
                        "dayOfMonth":{
                            "required":true
                        }
                    },
                    {
                        "provider":"InsurerX",
                        "dayOfMonth":{
                            "required":false
                        }
                    }
                ],
                "startDates":[
                    {
                        "refersTo":"plr-1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "provider":"PLR",
                        "productId":"1f1cd0a4-fb06-431a-8c57-bcf61596dac2",
                        "date":{
                            "required":true
                        },
                        "basis":{
                            "required":false
                        }
                    },
                    {
                        "refersTo":"insurerx-ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                        "provider":"InsurerX",
                        "productId":"ac33ac4f-5aea-4a49-af1a-817d0d1cbf80",
                        "date":{
                            "required":false
                        },
                        "basis":{
                            "required":true
                        }
                    }
                ]
            }

+ Request Payment Restriction for not existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Payment Restriction for Application with empty Basket. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
