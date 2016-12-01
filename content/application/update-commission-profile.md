## Update application Commission Sacrifice [/application/{id}/commission]
Update commission Sacrifice for all products in the application. This also clears the basket and triggers a re-quote.

- _**commissionSacrifice**_ `object` 
    - _**initial**_  `number` *(required)* - Initial commission sacrifice. Does not allow decimals. The lower this value is the higher initial commission will be. Value is a percent represented as integer value between `0` and `100`.
    - _**renewal**_  `number` *(optional)* - Renewal commission sacrifice. Allows decimals. The lower this value is the lower renewal commission will be. Value is a percent represented as decimal value between `0` and `2.5`.
    - _**nilBased**_  `boolean` *(optional)* - Nil based commission. Defaults to false. If set to true then values for initial and renewal will be overridden to 100 and 0.0.
    - _**commissionStyle**_ `string` *(optional)* - Commission Style, if not specificed default value is set to application owner's Firm Default.

### Update Commission Sacrifice [PUT]
+ Update Commission Sacrifice. (application/json)

    + Headers

            Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VybmFtZSIsImV4cCI6MTQyMjU0MDAzMH0.oyMYL7t57jhBvw-A3vghOAXl6cixpaTsZW69wz3p5M8

    + Body
    
            {
              "initial": 17,
              "renewal": 2.5,
              "nilBased": false,
              "commissionStyle": "INDEMNITY"
            }
            
+ Response 200 (application/json)

            {
              "initial": 17,
              "renewal": 2.5,
              "nilBased": false,
              "commissionStyle": "INDEMNITY"
            }

