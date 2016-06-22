## Pre-Populate [/application/pre-populate]
Creating a new Application with relaxed validation to allow for portal handover.

- ***customers*** `array` *(required)* - List of Customers (represented as `object`) for the Application.
    - ***referenceId*** `string` *(required)* - Temporary ID of the Customer to be used when referencing to ***livesAsssured*** for the Product and to identify them if any validation errors occur.
    - ***name*** `string` *(optional)* - Customer name.
    - ***surname*** `string` *(required)* - Customer surname.
    - ***title*** `string` *(required)* - Customer title. Allowed values: `MR`, `MRS`, `MISS`, `MS`, `DR`, `REV`.
    - ***gender*** `string` *(required)* - Customer gender. Allowed values: `FEMALE`, `MALE`.
    - ***dateOfBirth*** `string` *(required)* - Customer date of birth. ISO 8601 date format (`YYYY-MM-DD`) required. Example: `1980-01-01`.
    - ***smoker*** `boolean` *(required)* - `true` if Customer smokes, `false` otherwise.
    - ***email*** `string` *(required)* - Customer email address.
    - ***occupation*** `string` *(optional)* - Customer occupation.
    - ***earnings*** `string` *(optional)* - Customer earnings.
    - ***maritalStatus*** `string` *(optional)* - Customer marital status. Allowed values: `MARRIED`, `SINGLE`, `SEPARATED`, `DIVORCED`, `WIDOWED`, `CIVIL_PARTNER`.
    - ***contactDetails*** `object` *(optional)* - Customer contact details. Not required but cannot be empty.
        - ***telephoneNumber*** `string` *(required)* - Customer main telephone number.
        - ***alternativeTelephoneNumber*** `string` *(optional)* - Customer alternative telephone number.
        - ***address*** `object` *(optional)* - Customer address details. Not required but cannot be empty.
            - ***line1*** `string` *(optional)* - Address first line.
            - ***line2*** `string` *(optional)* - Address second line.
            - ***town*** `string` *(optional)* - Address town.
            - ***county*** `string` *(optional)* - Address county.
            - ***postcode*** `string` *(required)* - Address postcode.
    - ***drDetails*** `object` *(optional)* - Doctor details.
        - ***name*** `string` *(required)* - Doctor's name.
        - ***surgery*** `object` *(required)* - Surgery details.
            - ***name*** `string` *(required)* - Surgery's name.
            - ***contactDetails*** `object` *(required)* - Surgery contact details.
                - ***telephoneNumber*** `string` *(optional)* - Surgery telephone number.
                - ***address*** `object` *(required)* - Surgery address details.
                    - ***line1*** `string` *(optional)* - Address first line.
                    - ***line2*** `string` *(optional)* - Address second line.
                    - ***town*** `string` *(optional)* - Address town.
                    - ***county*** `string` *(optional)* - Address county.
                    - ***postcode*** `string` *(required)* - Address postcode.
- ***products*** `array` *(required)* - List of Products (represented as `object`) for the Application.
    - ***referenceId*** `string` *(required)* - Temporary ID of the Product to identify it if any validation errors occur.
    - ***type*** `string` *(required)* - Product type. Allowed values: `TERM`, `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER`, `INCOME_PROTECTION`.
    - ***coverAmount*** `number` *(required/optional)* - Product cover amount. Required if ***premium*** not specified. Does not allow decimals.
    - ***premium*** `number` *(required/optional)* - Product premium. Required if ***coverAmount*** not specified. Allows decimals.
    - ***premiumBasis*** `string` *(required/optional)* - Product premium basis. Required if ***type*** is `CRITICAL_ILLNESS`, `CRITICAL_ILLNESS_WITH_LIFE_COVER` or `INCOME_PROTECTION`. Allowed values: `GUARANTEED`, `REVIEWABLE`.
    - ***coverPeriod*** `number` *(required/optional)* - Product cover period in years. Required if ***coverUntilAge*** not specified. Does not allow decimals.
    - ***coverUntilAge*** `number` *(required/optional)* - Product cover until age in years. Required if ***coverPeriod*** not specified.  Does not allow decimals.
    - ***coverBasis*** `string` *(required)* - Product cover basis. Allowed values: `DECREASING`, `LEVEL`, `INCREASING`.
    - ***extendedCoverType*** `number` *(optional)* - Product extended cover type. Only valid if ***type*** is `INCOME_PROTECTION`. Allowed values: `FULL`, `BUDGET`. `FULL` is used by default if no value is specified.
    - ***deferredPeriodInWeeks*** `number` *(required/optional)* - Product deferred period in weeks. Required if ***type*** is `INCOME_PROTECTION`. Allowed values: `0`, `1`, `4`, `8`, `13`, `26`, `52`.
    - ***commissionSacrifice*** `object` *(optional)* - Commission sacrifice. Not required but cannot be empty.
        - ***initial***  `number` *(required)* - Initial commission sacrifice. Does not allow decimals. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
        - ***renewal***  `number` *(optional)* - Renewal commission sacrifice. Allows decimals. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
    - ***livesAssured*** `array` *(required)* - List of Customers (represented as `object`) for whom the Product is.
        - ***refersTo*** `string` *(required)* - Reference to ID of the Customer. Object with the same value must be available in ***customers*** list.
        - ***waiverOfPremium*** `boolean` *(optional)* - Flag to mark waiver of premium for Customer.
        - ***determinesCeaseAge*** `boolean` *(optional)* - Flag to mark which customer determines the cease age.
        - ***totalPermanentDisability*** `boolean` *(optional)* - Flag to mark total permanent disability for Customer.
- ***paymentDetails*** `object` *(optional)* - Payment details.
    - ***bankAccount*** `object` *(required)* - Bank account details.
        - ***sortCode*** `string` *(required)* - Bank account sort code.
        - ***number*** `string` *(required)* - Bank account number.
        - ***holders*** `array` *(required)* - Bank account holders. Number of allowed holders depends on Payment Restriction.
            - ***refersTo*** `string` *(required)* - Reference to ID of the Customer who is a holder of the account.
- ***owner*** `string` *(optional/required)* - Owner of the application.
- ***frn*** `string` *(optional/required)* - Firm reference number of the firm that owns the application. Must be provided if no specific individual owner is provided. If both owner and frn are present then ower takes precedence and frn is ignored.
- ***adviserReferenceNumber*** `string` *(optional)* - Firm reference number of the application. If either (owner and frn) are provided owner take precedence.
- ***originatorId*** `string` *(optional)* - Portal that the application originated from.
- ***quoteEffectiveDate*** `string` *(optional)* - The quote effective date. Must match ISO 8601 date format (YYYY-MM-DD) e.g: 1980-01-01.

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
                            "renewal": 1.0
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
                            "renewal": 1.0
                        },
                        "livesAssured": [
                            { "refersTo": "1001" }
                        ]
                    }
                ],
                "paymentBasis": "MONTHLY",
                "owner": "authenticated-user"
            }
