## Pre-Populate [/application/pre-populate]
Creating a new Application with relaxed validation to allow for portal handover.

- _**customers**_ `array` *(required)* - List of Customers (represented as `object`) for the Application.
    - _**referenceId**_ `string` *(required)* - Temporary ID of the Customer to be used when referencing to _**livesAsssured**_ for the Product and to identify them if any validation errors occur.
    - _**name**_ `string` *(optional)* - Customer name.
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
    - _**contactDetails**_ `object` *(optional)* - Customer contact details. Not required but cannot be empty.
        - _**telephoneNumber**_ `string` *(optional)* - Customer main telephone number.
        - _**alternativeTelephoneNumber**_ `string` *(optional)* - Customer alternative telephone number.
        - _**address**_ `object` *(optional)* - Customer address details. Not required but cannot be empty.
            - _**line1*** `string` *(optional)* - Address first line.
            - _**line2*** `string` *(optional)* - Address second line.
            - _**town**_ `string` *(optional)* - Address town.
            - _**county**_ `string` *(optional)* - Address county.
            - _**postcode**_ `string` *(required)* - Address postcode.
    - _**drDetails**_ `object` *(optional)* - Doctor details.
        - _**name**_ `string` *(required)* - Doctor's name.
        - _**surgery**_ `object` *(required)* - Surgery details.
            - _**name**_ `string` *(required)* - Surgery's name.
            - _**contactDetails**_ `object` *(required)* - Surgery contact details.
                - _**telephoneNumber**_ `string` *(optional)* - Surgery telephone number.
                - _**address**_ `object` *(required)* - Surgery address details.
                    - _**line1*** `string` *(optional)* - Address first line.
                    - _**line2*** `string` *(optional)* - Address second line.
                    - _**town**_ `string` *(optional)* - Address town.
                    - _**county**_ `string` *(optional)* - Address county.
                    - _**postcode**_ `string` *(required)* - Address postcode.
- _**products**_ `array` *(required)* - List of Products (represented as `object`) for the Application.
    - _**referenceId**_ `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
    - _**type**_ `string` *(required)* - Product type. Allowed values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
    - _**coverAmount**_ `number` *(required/optional)* - Product cover amount. Required if _**premium**_ not specified. Does not allow decimals.
    - _**premium**_ `number` *(required/optional)* - Product premium. Required if _**coverAmount**_ not specified. Allows decimals.
    - _**premiumBasis**_ `string` *(required/optional)* - Product premium basis. Required if _**type**_ is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Allowed values: `GUARANTEED`, `REVIEWABLE`.
    - _**coverPeriod**_ `number` *(required/optional)* - Product cover period in years. Required if _**coverUntilAge**_ not specified. Does not allow decimals.
    - _**coverUntilAge**_ `number` *(required/optional)* - Product cover until age in years. Required if _**coverPeriod**_ not specified.  Does not allow decimals.
    - _**coverBasis**_ `string` *(required)* - Product cover basis. Allowed values: `DECREASING`, `LEVEL`, `INCREASING`.
    - _**extendedCoverType**_ `number` *(optional)* - Product extended cover type. Only valid if _**type**_ is `INCOME_PROTECTION`. Allowed values: `FULL`, `BUDGET_ONE_YEAR`, `BUDGET_TWO_YEAR`. `FULL` is used by default if no value is specified.
    - _**deferredPeriodInWeeks**_ `number` *(required/optional)* - Product deferred period in weeks. Required if _**type**_ is `INCOME_PROTECTION`. Allowed values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
    - _**commissionSacrifice**_ `object` *(optional)* - Commission sacrifice. Not required but cannot be empty.
        - _**initial**_  `number` *(required)* - Initial commission sacrifice. Does not allow decimals. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
        - _**renewal**_  `number` *(optional)* - Renewal commission sacrifice. Allows decimals. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
        - _**nilBased**_  `boolean` *(optional)* - Nil based commission. Defaults to false. If set to true then values for initial and renewal will be overridden to 100 and 0.0.
    - _**livesAssured**_ `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
        - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer. Object with the same value must be available in _**customers**_ list.
        - _**waiverOfPremium**_ `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
        - _**determinesCeaseAge**_ `boolean` *(optional)* - Flag to mark which customer determines the cease age.
        - _**totalPermanentDisability**_ `boolean` *(optional)* - Flag to mark total permanent disability for Customer.
- _**paymentDetails**_ `object` *(optional)* - Payment details.
    - _**bankAccount**_ `object` *(required)* - Bank account details.
        - _**sortCode**_ `string` *(required)* - Bank account sort code.
        - _**number**_ `string` *(required)* - Bank account number.
        - _**holders**_ `array` *(required)* - Bank account holders. Number of allowed holders depends on Payment Restriction.
            - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer who is a holder of the account.
- _**owner**_ `string` *(optional/required)* - Owner of the application.
- _**frn**_ `string` *(optional/required)* - Firm reference number of the firm that owns the application. Must be provided if no specific individual owner is provided. If both owner and frn are present then ower takes precedence and frn is ignored.
- _**adviserReferenceNumber**_ `string` *(optional)* - Firm reference number of the application. If either (owner and frn) are provided owner take precedence.
- _**originatorId**_ `string` *(optional)* - Portal that the application originated from.
- _**quoteEffectiveDate**_ `string` *(optional)* - The quote effective date. Must match ISO 8601 date format (YYYY-MM-DD) e.g: 1980-01-01.

### Create new Application [POST]

+ Request Valid Application. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "customers": [
                    {
                        "referenceId": "cus-001",
                        "surname": "Doe",
                        "title": "MR",
                        "gender": "MALE",
                        "dateOfBirth": "1980-01-01",
                        "smoker": false,
                        "occupation": "underwriter",
                        "email": "john.doe@domain.com"
                        "drDetails": {
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
                    }
                ],
                "products": [
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
                            { "refersTo": "cus-001" }
                        ]
                    }
                ],
                "paymentDetails": {
                    "bankAccount":{
                        "sortCode":"112233",
                        "number":"11223344",
                        "holders":[
                            {
                                "refersTo":"cus-001"
                            }
                        ]
                  },
                }
            }

+ Response 201 (application/json)

            {
                "id": "1502181407123020689",
                "customers": [
                    {
                        "id": "1001",
                        "referenceId": "cus-001",
                        "enquiryId": "029ab8d8-0a62-423e-8e84-6e8d505bb742",
                        "surname": "Doe",
                        "title": "MR",
                        "gender": "MALE",
                        "dateOfBirth": "1980-01-01",
                        "smoker": false,
                        "email": "john.doe@domain.com"
                    }
                ],
                "products": [
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
                ],
                "paymentBasis": "MONTHLY",
                "owner": "authenticated-user"
            }
