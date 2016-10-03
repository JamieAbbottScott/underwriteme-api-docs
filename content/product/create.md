## Create [/application/{id}/product]
Creating new Product based on sent JSON data.

- _**referenceId**_ `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
- _**type**_ `string` *(required)* - Product type. Allowed values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
- _**coverAmount**_ `number` *(required/optional)* - Product cover amount. Required if _**premium**_ not specified. Does not allow decimals.
- _**premium**_ `number` *(required/optional)* - Product premium. Required if _**coverAmount**_ not specified. Allows decimals.
- _**premiumBasis**_ `string` *(required/optional)* - Product premium basis. Required if _**type**_ is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Allowed values: `GUARANTEED`, `REVIEWABLE`.
- _**premiumStyle**_ `string` *(required/optional)* - Product premium style. Required if _**type**_ is `INCOME_PROTECTION`. Allowed values: `LEVEL`, `AGE_COSTED`.
- _**coverPeriod**_ `number` *(required/optional)* - Product cover period in years. Required if _**coverUntilAge**_ not specified. Does not allow decimals.
- _**coverUntilAge**_ `number` *(required/optional)* - Product cover until age in years. Required if _**coverPeriod**_ not specified.  Does not allow decimals.
- _**coverBasis**_ `string` *(required)* - Product cover basis. Allowed values: `DECREASING`, `LEVEL`, `INCREASING`.
- _**deferredPeriodInWeeks**_ `number` *(required/optional)* - Product deferred period in weeks. Required if _**type**_ is `INCOME_PROTECTION`. Allowed values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
- _**commissionSacrifice**_ `object` *(optional)* - Commission sacrifice. Not required but cannot be empty.
    - _**initial**_  `number` *(required)* - Initial commission sacrifice. Does not allow decimals. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
    - _**renewal**_  `number` *(optional)* - Renewal commission sacrifice. Allows decimals. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
    - _**nilBased**_  `boolean` *(optional)* - Nil based commission. Defaults to false. If set to true then values for initial and renewal will be overridden to 100 and 0.0.
- _**livesAssured**_ `array` *(optional)* - List of Customers (represented as `object`) for whom the Product is.
    - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer. Object with the same value must be available in _**customers**_ list.
    - _**waiverOfPremium**_ `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
    - _**determinesCeaseAge**_ `boolean` *(optional)* - Flag to mark which customer determines the cease age.
    - _**totalPermanentDisability**_ `boolean` *(optional)* - Flag to mark total permanent disability for Customer.

### Create new Product [POST]
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
                    "renewal": 1.0,
                    "nilBased": false
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
                    "renewal": 1.0,
                    "nilBased": false
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
                //TODO error examples have copy and paste mistakes - FIX ALL OF THEM
                "name": {
                    "errorMessage": "Product type can only be set to the following values: [TERM, CRITICAL_ILLNESS, CRITICAL_ILLNESS_WITH_LIFE_COVER, INCOME_PROTECTION, FAMILY_INCOME_BENEFIT]"
                }
            }

+ Request Product coverBasis must be valid. (application/json)

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
                "name": {
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
                "name": {
                    "errorMessage": "Product premium basis can only be set to the following values: [GUARANTEED, REVIEWABLE]"
                }
            }
