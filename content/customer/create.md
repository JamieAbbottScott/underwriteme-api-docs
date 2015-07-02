## Create [/application/{existing-application-id}/customer]
Creating new Customer for Application based on JSON data.

- ***customer*** `object` *(required)* - Customer (represented as `object`) for the Application.
    - ***referenceId*** `string` *(required)* - Temporary ID of the Customer to be used when referencing to ***livesAsssured*** for the Product and to identify them if any validation errors occur.
    - ***name*** `string` *(required)* - Customer name.
    - ***surname*** `string` *(required)* - Customer surname.
    - ***title*** `string` *(required)* - Customer title. Allowed values: `MR`, `MRS`, `MISS`, `MS`, `DR`, `REV`.
    - ***gender*** `string` *(required)* - Customer gender. Allowed values: `FEMALE`, `MALE`.
    - ***dateOfBirth*** `string` *(required)* - Customer date of birth. ISO 8601 date format (`YYYY-MM-DD`) required. Example: `1980-01-01`.
    - ***smoker*** `boolean` *(required)* - `true` if Customer smokes, `false` otherwise.
    - ***email*** `string` *(required)* - Customer email address.
    - ***contactDetails*** `object` *(optional)* - Customer contact details. Not required but cannot be empty.
        - ***telephoneNumber*** `string` *(required)* - Customer main telephone number.
        - ***alternativeTelephoneNumber*** `string` *(optional)* - Customer alternative telephone number.
        - ***address*** `object` *(optional)* - Customer address details. Not required but cannot be empty.
            - ***line1*** `string` *(optional)* - Address first line.
            - ***line2*** `string` *(optional)* - Address second line.
            - ***town*** `string` *(optional)* - Address town.
            - ***county*** `string` *(optional)* - Address county.
            - ***postcode*** `string` *(required)* - Address postcode.

### Create new Customer [POST]
+ Request Valid Customer. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "referenceId": "cus-001",
                "name": "John",
                "surname": "Doe",
                "title": "MR",
                "gender": "MALE",
                "dateOfBirth": "1980-01-01",
                "smoker": false,
                "email": "john.doe@domain.com"
            }

+ Response 201 (application/json)

            {
                "id": "1001",
                "referenceId": "cus-001",
                "enquiryId": "029ab8d8-0a62-423e-8e84-6e8d505bb742",
                "name": "John",
                "surname": "Doe",
                "title": "MR",
                "gender": "MALE",
                "dateOfBirth": "1980-01-01",
                "smoker": false,
                "email": "john.doe@domain.com"
            }

+ Request Customer name cannot contain numbers. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "referenceId": "cus-001",
                "name": "J0hn",
                "surname": "Doe",
                "title": "MR",
                "gender": "MALE",
                "dateOfBirth": "1980-01-01",
                "smoker": false,
                "email": "john.doe@domain.com"
            }

+ Response 400 (application/json)

            {
                "referenceId": "cus-001",
                "name": {
                    "errorMessage": "Value must be a valid name. Must start with a letter. Can contain letters (A to Z), hyphens (-), apostrophes (') and spaces."
                }
            }