## Update [/application/{id}/product/{productId}]
Update operations on existing Product identified by unique ID associated with Application.

- ***referenceId*** `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
- ***type*** `string` *(required)* - Product type. Allowed values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
- ***coverAmount*** `number` *(required/optional)* - Product cover amount. Required if ***premium*** not specified. Does not allow decimals.
- ***premium*** `number` *(required/optional)* - Product premium. Required if ***coverAmount*** not specified. Allows decimals.
- ***premiumBasis*** `string` *(required/optional)* - Product premium basis. Required if ***type*** is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Allowed values: `GUARANTEED`, `REVIEWABLE`.
- ***coverPeriod*** `number` *(required/optional)* - Product cover period in years. Required if ***coverUntilAge*** not specified. Does not allow decimals.
- ***coverUntilAge*** `number` *(required/optional)* - Product cover until age in years. Required if ***coverPeriod*** not specified.  Does not allow decimals.
- ***coverBasis*** `string` *(required)* - Product cover basis. Allowed values: `DECREASING`, `LEVEL`, `INCREASING`.
- ***extendedCoverType*** `number` *(optional)* - Product extended cover type. Available if ***type*** is `INCOME_PROTECTION`. Allowed values: `FULL`, `BUDGET`.
- ***deferredPeriodInWeeks*** `number` *(required/optional)* - Product deferred period in weeks. Required if ***type*** is `INCOME_PROTECTION`. Allowed values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
- ***commissionSacrifice*** `object` *(optional)* - Commission sacrifice. Not required but cannot be empty.
    - ***initial***  `number` *(required)* - Initial commission sacrifice. Does not allow decimals. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
    - ***renewal***  `number` *(optional)* - Renewal commission sacrifice. Allows decimals. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
- ***livesAssured*** `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
    - ***refersTo*** `string` *(required)* - Reference to ID of the Customer. Object with the same value must be available in ***customers*** list.
    - ***waiverOfPremium*** `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
    - ***determinesCeaseAge*** `boolean` *(optional)* - Flag to mark which customer determines the cease age.
    - ***totalPermanentDisability*** `boolean` *(optional)* - Flag to mark total permanent disability for Customer.

### Update existing Product for Application [PUT]
+ Request Valid Product. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "referenceId": "pro-001",
                "type": "TERM",
                "coverBasis": "LEVEL",
                "coverPeriod": 20,
                "coverAmount": 120000,
                "commissionSacrifice": {
                    "initial": 10,
                    "renewal": 1.0
                },
                "livesAssured": [
                    { "refersTo": "existing-customer-id" }
                ]
            }

+ Response 201 (application/json)

            {
                "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                "referenceId": "pro-001",
                "type": "TERM",
                "coverBasis": "LEVEL",
                "coverPeriod": 20,
                "coverAmount": 120000,
                "commissionSacrifice": {
                    "initial": 10,
                    "renewal": 1.0
                },
                "livesAssured": [
                    { "refersTo": "1001" }
                ]
            }

+ Request Product type must be valid. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                "referenceId": "pro-001",
                "type": "term",
                "coverBasis": "LEVEL",
                "coverPeriod": 20,
                "coverAmount": 120000,
                "livesAssured": [
                    { "refersTo": "existing-customer-id" }
                ]
            }

+ Response 400 (application/json)

            {
                "referenceId": "pro-001",
                "type": {
                    "errorMessage": "Product type can only be set to the following values: [TERM, CRITICAL_ILLNESS, CRITICAL_ILLNESS_WITH_LIFE_COVER, INCOME_PROTECTION, FAMILY_INCOME_BENEFIT]"
                }
            }

+ Request Product cover basis must be valid. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                "referenceId": "pro-001",
                "type": "TERM",
                "coverBasis": "level",
                "coverPeriod": 20,
                "coverAmount": 120000,
                "livesAssured": [
                    { "refersTo": "existing-customer-id" }
                ]
            }

+ Response 400 (application/json)

            {
                "referenceId": "pro-001",
                "type": {
                    "errorMessage": "Product cover basis can only be set to the following values: [DECREASING, LEVEL, INCREASING]"
                }
            }

+ Request Product premiumBasis must be valid. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "id": "029ab8d8-0a62-423e-8e84-6e8d505bb743",
                "referenceId": "pro-001",
                "type": "TERM",
                "coverBasis": "LEVEL",
                "premiumBasis": "rev",
                "coverPeriod": 20,
                "coverAmount": 120000,
                "livesAssured": [
                    { "refersTo": "existing-customer-id" }
                ]
            }

+ Response 400 (application/json)

            {
                "referenceId": "pro-001",
                "type": {
                    "errorMessage": "Product premium basis can only be set to the following values: [GUARANTEED, REVIEWABLE]"
                }
            }
