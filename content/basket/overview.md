# Group Basket
Basket related resources of the **UnderwriteMe API**.

Basket consist of Basket Items. Basket Items correspond to Comparison Items. Same ID value is used. Items can be added to Basket only after Comparison was requested and quotes are retrieved.

Operations on Basket Items always result in returning Basket state after operation has been made.

Any invalid (data the Items quote was based on has changed) or expired Basket Items are removed from the basket.