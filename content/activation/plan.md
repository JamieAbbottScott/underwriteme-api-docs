## Plan [/api/application/{applicationId}/activation/plan]
Assigning a Plan to an activated Application based on JSON data

- ***plan-id*** `string` *(required)* - The ID of the Plan to be assigned to an activated Application.

### Assign a Plan to an Application [PUT]
+ Request a Plan assignment to an Application. (application/json)

            {
                "plan-id":"LVPLAN001"
            }

+ Response 204

+ Request a Plan assignment to an Application when the authenticated user has no permission to assign. (application/json)

            {
                "plan-id":"LVPLAN001"
            }

+ Response 401 (application/json)

            {
                "errorMessage": "You don't have permission the assign planId to the application."
            }

+ Request a Plan assignment to an Application when the application is not activated. (application/json)

            {
                "plan-id":"LVPLAN001"
            }

+ Response 500 (application/json)

            {
                "errorMessage": "The application is not activated"
            }
