## Adviser Declaration [/application/{applicationId}/declaration/adviser]
Operations on Adviser Declaration associated with Application.

Answer does not have to be provided for this Declaration.

JSON request and response have following structure:

- _**text**_ `string` *(required)* - HTML formatted Declaration text.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Adviser Declaration [GET]
+ Request Read Adviser Declaration. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question":"<ul>\n    <li>I confirm that this application has been completed in accordance with the current intermediary terms of business with the insurer(s).</li>\n    <li>I agree that I am acting on the client’s behalf as their agent.</li>\n    <li>I confirm that I am responsible for providing, and have provided, to the client the information that must be provided by an intermediary to a consumer under ICOBS, including the scope of my service and product information.</li>\n    <li>I confirm that I have clearly read out all the application questions and warnings on the screen to the client/s, and I have accurately recorded everything that the client/s told me on the application form.</li>\n    <li>I confirm that taking the total of the covers in the policy(ies) in this application, the covers do not exceed £20 million of life insurance cover.</li>\n    <li>I have read out the Client Declaration to the client/s and notified the client/s that if they do not understand anything, they must ask me for clarification or further information. The client/s have provided confirmation that each of the statements in the client declaration is correct. I have answered all of the client's requests for clarification or further information.</li>\n    <li>I have provided an accurate translation of the client's responses to the underwriting questions in completing this application.</li>\n    <li>I have obtained all necessary consents to the processing of sensitive personal data.</li>\n</ul>"
            }
