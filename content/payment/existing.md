## Existing [/application/{id}/payment]
Operations on existing Payment details for Provider Product from the Basket associated with Application.

JSON request and response have following structure:

- ***bankAccount*** `object` *(required)* - Bank account.
    - ***sortCode*** `string` *(required)* - Bank sort code.
    - ***number*** `string` *(required)* - Bank account number.
    - ***holders*** `array` *(required)* - Bank account holders.
        - ***refersTo*** `string` *(required)* - Reference to ID of the Customer.
- ***paymentDays*** `array` *(required)* - Payment days.
    - ***provider*** `string` *(required)* - Unique Provider ID.
    - ***dayOfMonth*** `number` *(required/optional)* - Payment day of month. Depends on Provider Restrictions.
- ***startDates*** `array` *(required)* - Payment start dates.
    - ***refersTo*** `string` *(required)* - Reference to ID of the Customer.
    - ***provider*** `string` *(optional)* - Unique Provider ID.
    - ***productId*** `string` *(optional)* - Unique Product ID.
    - ***date*** `string` *(required/optional)* - Payment start date. ISO 8601 date format (`YYYY-MM-DD`). Example: `2015-04-11`. Depends on Provider Restrictions.
    - ***basis*** `string` *(required/optional)* - Start date basis. Allowed values: `TO_BE_ADVISED`, `TO_START_IMMEDIATELY`. Depends on Provider Restrictions.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Payment details for Provider Product [GET]
+ Request Retrieve existing Payment details for Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "paymentDays": [
                    {
                        "provider": "PLR"
                    }
                ],
                "startDates": [
                    {
                        "provider": "PLR",
                        "refersTo": "plr-0ea872c8-5ea2-4ef0-a824-08116dfb7c03",
                        "productId": "0ea872c8-5ea2-4ef0-a824-08116dfb7c03"
                    }
                ]
            }

+ Request Not existing Payment details. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 404