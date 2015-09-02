FORMAT: 1A

# UnderwriteMe API

## Overview
**UnderwriteMe API** is a set of REST endpoints which allows you to interact with underwriting workflow. Workflow consist of following components:

  * **Authentication** - Receiving access token after giving valid authentication details.
  * **Application** - Creating Application which contains basic information about Customers and Products they apply for.
  * **Customer** - Managing Customer for Application. Provides CRUD operations.
  * **Product** - Managing Product for Application. Provides CRUD operations.
  * **Pre-Declaration** - Confirming Enquiry Pre-Declaration in order start filling in Enquiry.
  * **Enquiry** - Filling in Customer Enquiry.
  * **Question** - Retrieving information about Enquiry Question like its Definition, available Option List and partial Option Lookup.
  * **Post-Declaration** - Confirming Application Post-Declaration in order to finish filling in Customer Enquiries.
  * **Comparison** - Requesting and retrieving Decisions and Quotes for Products.
  * **Basket** - Choosing Products for Activation.
  * **Declaration-of-Health** - Confirming that the health disclosures have not changed for a Customer with expired Comparison Items.
  * **Doctor** - Filling in Doctor details if Provider Products require that.
  * **Payment** - Filling in Payment details for Provider Products.
  * **Legals** - Filling in and retrieving Legal declarations.
  * **Activation** - Requesting and retrieving Activation state of selected Products.
  * **Message** - Retrieve all i18n messages.