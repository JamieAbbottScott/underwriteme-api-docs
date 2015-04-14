## Authenticate [/auth]
Logging in and retrieving access token that must be added to each request made to **UnderwriteMe API** resources.

**Authentication API** is using small subset of OAuth2 protocol (http://oauth.net/2) rules.

Token is valid for one hour after it has been requested. **Authentication API** is using JWT (http://jwt.io) format to represent tokens.

In order to authenticate using retrieved access token send it along with your resource request in `Authorization` HTTP header using `Bearer` authorization scheme. Examples are attached along with the examples of other resources usage.

Expected authentication JSON format:

- ***username*** `string` *(required)* - User's login in the system.
- ***password*** `string` *(required)* - User's password in the system.

### Login and retrieve access token [POST]
+ Request Valid Authentication. (application/json)

            {
                "username":"username",
                "password":"password"
            }

+ Response 200

            {
                "access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8"
            }

+ Request Invalid username/password format. (application/json)

            {
                "u":"username",
                "p":"password"
            }

+ Response 400

+ Request Invalid username/password. (application/json)

            {
                "username":"alice",
                "password":"wonderland"
            }

+ Response 401
