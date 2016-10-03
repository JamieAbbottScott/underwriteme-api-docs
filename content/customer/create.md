## Create [/application/{id}/customer]
Creating new Customer for Application based on JSON data. Lists all Customers for Application.

- _**referenceId**_ `string` *(required)* - Temporary ID of the Customer to be used when referencing to _**livesAsssured**_ for the Product and to identify them if any validation errors occur.
- _**name**_ `string` *(required)* - Customer name.
- _**surname**_ `string` *(required)* - Customer surname.
- _**title**_ `string` *(required)* - Customer title. Allowed values: `MR`, `MRS`, `MISS`, `MS`, `DR`, `REV`.
- _**otherTitle**_ `string` *(optional)* - Customer custom title (if `title` offers nothing suitable).
- _**gender**_ `string` *(required)* - Customer gender. Allowed values: `FEMALE`, `MALE`.
- _**dateOfBirth**_ `string` *(required)* - Customer date of birth. ISO 8601 date format (`YYYY-MM-DD`) required. Example: `1980-01-01`.
- _**smoker**_ `boolean` *(required)* - `true` if Customer smokes, `false` otherwise.
- _**email**_ `string` *(required)* - Customer email address.
- _**occupation**_ `string` *(optional)* - Customer occupation.
- _**earnings**_ `string` *(optional)* - Customer earnings.
- _**maritalStatus**_ `string` *(optional)* - Customer marital status. Allowed values: `MARRIED`, `SINGLE`, `SEPARATED`, `DIVORCED`, `WIDOWED`, `CIVIL_PARTNER`.
- _**contactDetails**_ `object` *(required)* - Customer contact details.
    - _**telephoneNumber**_ `string` *(required)* - Customer main telephone number.
    - _**alternativeTelephoneNumber**_ `string` *(optional)* - Customer alternative telephone number.
    - _**address**_ `object` *(required)* - Customer address details.
        - _**line1**_ `string` *(optional)* - Address first line.
        - _**line2**_ `string` *(optional)* - Address second line.
        - _**town**_ `string` *(optional)* - Address town.
        - _**county**_ `string` *(optional)* - Address county.
        - _**postcode**_ `string` *(required)* - Address postcode.

### Create new Customer for Application [POST]
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
                "email": "john.doe@domain.com",
                "maritalStatus": "SINGLE"
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
                "email": "john.doe@domain.com",
                "maritalStatus": "SINGLE"
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
                "email": "john.doe@domain.com",
                "maritalStatus": "SINGLE"
            }

+ Response 400 (application/json)

            {
                "referenceId": "cus-001",
                "name": {
                    "errorMessage": "Value must be a valid name. Must start with a letter. Can contain letters (A to Z), hyphens (-), apostrophes (') and spaces."
                }
            }
