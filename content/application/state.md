# State
Given an application Id, retrieves the state of the application. 
The ApplicationState represents the current state of the various application part / section that makes up an application. Some part of the application can only be filled or move forward once some other part of the application is fulfilled. Underwriteme serverhandles all those logic and provide this simple representation based on which any lightweight UI component can be built. 

Each section (eg. contactDetails / coverDetails etc) represents whether it is required , is complete and can be completed. 


## State [/application/{id}/state]

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Application State[GET]
+ Request Retrieve existing Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

        {  
            "applicationId":"1605251155416890243",
            "activated":false,
            "confirmed":true,
            "canAddCustomers":false,
            "canAddProducts":true,
            "coverDetails":{  
                "required":true,
                "complete":true,
                "canBeCompleted":true
            },
            "contactDetails":{  
                "required":true,
                "complete":true,
                "canBeCompleted":true
            },
            "quickQuote":{  
                "required":false,
                "complete":false,
                "canBeCompleted":false
            },
            "customerEnquiries":[  
                {  
                    "lifeReference":{  
                        "name":"Sajid",
                        "surname":"Moinuddin",
                        "refersTo":"36"
                    },
                    "enquiry":{  
                        "required":true,
                        "complete":true,
                        "canBeCompleted":true,
                        "enquiryLineStates":[  
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Recent health"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Personal details"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Last 5 year's health"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Have you ever had"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Lifestyle continued..."
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Lifestyle"
                            }
                        ]
                    }
                },
                {  
                    "lifeReference":{  
                        "name":"Test",
                        "surname":"Test",
                        "refersTo":"37"
                    },
                    "enquiry":{  
                        "required":true,
                        "complete":true,
                        "canBeCompleted":true,
                        "enquiryLineStates":[  
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Last 5 year's health"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Lifestyle continued..."
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Recent health"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Have you ever had"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Personal details"
                            },
                            {  
                                "required":true,
                                "complete":true,
                                "canBeCompleted":true,
                                "name":"Lifestyle"
                            }
                        ]
                    }
                }
            ],
            "quote":{  
                "required":true,
                "complete":true,
                "canBeCompleted":true
            },
            "paymentDetails":{  
                "required":true,
                "complete":true,
                "canBeCompleted":true
            },
            "drDetails":{  
                "required":false,
                "complete":true,
                "canBeCompleted":false
            },
            "confirmation":{  
                "required":true,
                "complete":true,
                "canBeCompleted":true
            },
            "review":{  
                "required":true,
                "complete":false,
                "canBeCompleted":true
            }
        }
                                    
                            
+ Request Not existing Application state. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404
