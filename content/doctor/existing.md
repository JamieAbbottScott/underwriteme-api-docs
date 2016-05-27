<a name="def-doctor-details"></a>
## Existing [/application/{applicationId}/customer/{customerId}/doctor]
Operations on existing Doctor details associated with Application Customer.

Doctor details are required if any of Provider Products in the Basket have supervised Decision type (`REFER` or `EVIDENCE_REQUIRED`). This information must be provided for Customers to whom the supervised Provider Products belong to.

JSON request and response have following structure:

- ***name*** `string` *(required)* - Doctor's name.
- ***surgery*** `object` *(required)* - Surgery details.
    - ***name*** `string` *(required)* - Surgery's name.
    - ***contactDetails*** `object` *(required)* - Surgery contact details.
        - ***telephoneNumber*** `string` *(required)* - Surgery telephone number.
        - ***address*** `object` *(required)* - Surgery address details.
            - ***line1*** `string` *(optional)* - Address first line.
            - ***line2*** `string` *(optional)* - Address second line.
            - ***town*** `string` *(optional)* - Address town.
            - ***county*** `string` *(optional)* - Address county.
            - ***postcode*** `string` *(required)* - Address postcode.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + customerId (required, string, `1234`) ... Unique ID of existing Customer.

### Retrieve Doctor [GET]
+ Request Empty Doctor details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {}

+ Request Full Doctor details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "name": "Adam Smith",
                "surgery": {
                    "name": "Adam Smith Surgery",
                    "contactDetails": {
                        "telephoneNumber": "01234 567890",
                        "address": {
                            "line1": "21 King's Road",
                            "line2": "Queen Avenue",
                            "town": "London",
                            "county": "London",
                            "postcode": "AB1 2CD"
                        }
                    }
                }
            }

### Confirm Post-Declaration [PUT]
+ Request Fill in Doctor details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "name": "Adam Smith",
                "surgery": {
                    "name": "Adam Smith Surgery",
                    "contactDetails": {
                        "telephoneNumber": "01234 567890",
                        "address": {
                            "line1": "21 King's Road",
                            "line2": "Queen Avenue",
                            "town": "London",
                            "county": "London",
                            "postcode": "AB1 2CD"
                        }
                    }
                }
            }

+ Response 200

            {
                "name": "Adam Smith",
                "surgery": {
                    "name": "Adam Smith Surgery",
                    "contactDetails": {
                        "telephoneNumber": "01234 567890",
                        "address": {
                            "line1": "21 King's Road",
                            "line2": "Queen Avenue",
                            "town": "London",
                            "county": "London",
                            "postcode": "AB1 2CD"
                        }
                    }
                }
            }

+ Request Doctor name and surgery details are required. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "name": null,
                "surgery": null
            }

+ Response 400

            {
                "name": {
                    "errorMessage": "Value is required."
                },
                "surgery": {
                    "errorMessage": "Value is required."
                }
            }
