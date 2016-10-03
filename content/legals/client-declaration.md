## Client Declaration [/application/{applicationId}/declaration/client]
Operations on Client Declaration associated with Application.

Answer does not have to be provided for this Declaration.

JSON request and response have following structure:

- _**text**_ `string` *(required)* - HTML formatted Declaration text.

+ Parameters

    + applicationId (required, string, `1502181407123020689`) ... Unique ID of existing Application.

### Retrieve Client Declaration [GET]
+ Request Read Client Declaration. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

+ Response 200

            {
                "question":"<p>Before completing the sale of the policy that you have chosen, you must confirm the following:</p>\n\n<ul>\n    <li>You have answered all the questions honestly and have taken reasonable care that your answers are accurate and complete and all other information provided by you has been provided honestly and accurately. If you have not done so, your policy may be cancelled and/or the insurer may not pay out in the event of a claim. This information will not be checked and the insurer will rely on your answers and information you provide being accurate.</li>\n    <li>You consent to each participating insurer and intermediary processing your personal data (including sensitive personal data, such as medical information) for the purposes of providing you with a quote, underwriting your policy and assessing any claims.</li>\n    <li>You consent to your personal data (including sensitive personal data such as medical information) being shared with other insurers to whom you apply in the future, reinsurers, medical professionals and/or healthcare management companies, regulatory bodies (the Financial Conduct Authority, HM Revenue and Customs, etc.) and any other relevant third-parties. All such parties will be described as “Interested Parties” for the purposes of this application.</li>\n    <li>Interested Parties may transfer your personal data (including sensitive personal data such as medical information) to countries outside the European Economic Area in order to provide services connected with your policy, however, any such transfer must always comply with the Data Protection Act.</li>\n    <li>You consent to your GP providing medical information to your insurers and their claim handlers to support any claim you make (or which is made on your behalf).</li>\n    <li>You are a UK resident, excluding Channel Islands and the Isle of Man.</li>\n    <li>If there is a change to your circumstances and / or any answer to a question or other information provided is not correct, you must inform your insurer as soon as possible. The insurer will then request any further details required by it. This may affect the insurer's assessment of the risk.</li>\n</ul>"
            }
