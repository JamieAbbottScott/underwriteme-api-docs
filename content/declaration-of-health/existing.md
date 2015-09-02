## Existing [/application/{applicationId}/declaration/declaration-of-health]
Operations on existing Declaration-of-Health associated with Application.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Declaration-of-Health [GET]
+ Request Declaration-of-Health for application with no expired Comparison Items (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404

+ Request Declaration-of-Health for application with expired Comparison Items (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question": "<p>HTML formatted Declaration-of-Health text.</p>",
                "requiredFor": [
                    {
                        "id": "392",
                        "enquiryId": "ff6921fc-0565-4088-a12a-85d13821cf2a",
                        "name": "John",
                        "surname": "Doe",
                        "title": "MR",
                        "gender": "MALE",
                        "dateOfBirth": "1980-01-01",
                        "smoker": false,
                        "email": "john.doe@domain.com",
                        "contactDetails": {
                            "telephoneNumber": "01234 567890",
                            "address": {
                                "line1": "1 Road",
                                "town": "Town",
                                "county": "County",
                                "postcode": "SW1E1RS"
                            }
                        }
                    }
                ]
            }				

### Confirm Declaration-of-Health [PUT]
+ Request Confirm Declaration-of-Health (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answered": true
            }

+ Response 200

            {
                "question": "<p>HTML formatted Declaration-of-Health text.</p>",
                "requiredFor": [
                    {
                        "id": "392",
                        "enquiryId": "ff6921fc-0565-4088-a12a-85d13821cf2a",
                        "name": "John",
                        "surname": "Doe",
                        "title": "MR",
                        "gender": "MALE",
                        "dateOfBirth": "1980-01-01",
                        "smoker": false,
                        "email": "john.doe@domain.com",
                        "contactDetails": {
                            "telephoneNumber": "01234 567890",
                            "address": {
                                "line1": "1 Road",
                                "town": "Town",
                                "county": "County",
                                "postcode": "SW1E1RS"
                            }
                        }
                    }
                ]
            }				

+ Request Decline Declaration-of-Health (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answered": false
            }

+ Response 200

            {
                "question": "<p>HTML formatted Declaration-of-Health text.</p>",
                "requiredFor": [
                    {
                        "id": "392",
                        "enquiryId": "ff6921fc-0565-4088-a12a-85d13821cf2a",
                        "name": "John",
                        "surname": "Doe",
                        "title": "MR",
                        "gender": "MALE",
                        "dateOfBirth": "1980-01-01",
                        "smoker": false,
                        "email": "john.doe@domain.com",
                        "contactDetails": {
                            "telephoneNumber": "01234 567890",
                            "address": {
                                "line1": "1 Road",
                                "town": "Town",
                                "county": "County",
                                "postcode": "SW1E1RS"
                            }
                        }
                    }
                ]
            }			
            
+ Request Confirm Declaration-of-Health for Application with no expired quotes  (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answered": true
            }

+ Response 404
           	
