## Provider Legal Confirmation [/api/application/{applicationId}/customer/{customerId}/legal-confirmation/provider/{providerId}']
Operations on Provider Legal Confirmation associated with Application, Customer and Provider.

Activation will not be possible without confirming legal terms and conditions, for providers in where this information is mandatory.

JSON request and response have following structure:

- _**declarationText**_ `string` *(required)* - Provider declaration text.
- _**legalDocumentLink**_ `string` *(required)* - Valid URL that contains a document with the legal terms and conditions.
- _**answer**_ `boolean` *(optional)* - Answer to declaration. If not available it means answer was not given (nor `true` or `false`).

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.
    + customerId (required, string, `1234`) ... Unique ID of existing Customer.
    + providerId (required, string, `PLR`) ... Unique ID of existing Provider.

### Retrieve Provider Legal Confirmation [GET]
+ Request Read Provider Legal Confirmation. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "declarationText": "Before we can accept this online application, you must confirm that your client has read, understood and given consent to the use of their personal information...",
                "legalDocumentLink": "http://wwww.current-provider-site.com/legal-document-link/"
            }

+ Request Read Provider Legal Confirmation set to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "declarationText": "Before we can accept this online application, you must confirm that your client has read, understood and given consent to the use of their personal information...",
                "legalDocumentLink": "http://wwww.current-provider-site.com/legal-document-link/",
                "answer": true
            }

### Update Provider Legal Confirmation [PUT]
+ Request Update Provider Legal Confirmation to true. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body

            {
                "answer": true
            }

+ Response 200

            {
                "declarationText": "Before we can accept this online application, you must confirm that your client has read, understood and given consent to the use of their personal information...",
                "legalDocumentLink": "http://wwww.current-provider-site.com/legal-document-link/",
                "answer": true
            }
