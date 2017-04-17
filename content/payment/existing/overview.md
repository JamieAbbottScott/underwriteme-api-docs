## Existing [/application/{id}/payment]
Operations on existing Payment for Application based on Provider Products available in the Basket.

JSON request and response have following structure:

- _**bankAccount**_ `object` *(required)* - Bank account details.
    - _**sortCode**_ `string` *(required)* - Bank account sort code.
    - _**number**_ `string` *(required)* - Bank account number.
    - _**holders**_ `array` *(required)* - Bank account holders. Number of allowed holders depends on Payment Restriction.
        - _**refersTo**_ `string` *(required)* - Reference to ID of the Customer who is a holder of the account.
- _**paymentDays**_ `array` *(required/optional)* - List of payment days by Provider. List cannot be empty if at least one Provider requires payment day. If no Provider requires payment day then there is no need to supply value for this property.
    - _**provider**_ `string` *(required)* - Unique Provider ID.
    - _**dayOfMonth**_ `number` *(required/optional)* - Day of month when payment should be taken from the bank account. Allowed values: `1` to `28`. Requirement depends on Payment Restriction.
- _**startDates**_ `array` *(required/optional)* - List of start dates by Provider Product. Optional if all products are referred to Underwriteme Worbkench.
    - _**refersTo**_ `string` *(required)* - Unique ID of existing Provider Product in the Basket.
    - _**provider**_ `string` *(optional)* - Unique Provider ID. Read-only property. This value does not have to be provided when updating Payment. It will be returned after successful request.
    - _**productId**_ `string` *(optional)* - Unique Product ID. Read-only property. This value does not have to be provided when updating Payment. It will be returned after successful request.
    - _**date**_ `string` *(required/optional)* - Date when Provider Product cover starts. ISO 8601 date format (`YYYY-MM-DD`). Example: `2015-04-11`. Requirement depends on Payment Restriction.
    - _**basis**_ `string` *(required/optional)* - Basis on which Provider Product cover starts. Allowed values: `TO_BE_ADVISED`, `TO_START_IMMEDIATELY`. Requirement depends on Payment Restriction.

+ Parameters

    + id (required, string, `1502181407123020689`) ... Unique ID of existing Application.
