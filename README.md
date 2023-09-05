

**Overview**

eCommerceDemo is an iOS application that allows users to retrieve and display data from a remote API. This README provides an overview of the key features and functionality of the app.

****Features****

**Button for API Request:**
- When the app is launched, users will see a button on the main screen.
- Upon clicking this button, a new view controller is presented.

**Collection View with Custom Cells:**
- In the presented view controller, there is a collection view.
- The collection view displays data retrieved from the remote API using custom cells.

**API Data Retrieval:**
-  As soon as the new view controller is presented, the app triggers an API call using URLSession.
-  This API call requests data from a remote server, which may be used for various purposes in the app.

**Data Model:**
- The data retrieved from the API is deserialized and mapped to a data model.
- This model is responsible for holding and managing the data.

**Data Presentation in Collection View:**
- Once the API call is successful, the data model is updated with the received data.
-  The collection view is then populated with the data from the model, customizing the appearance of cells according to the data.


**How to Use**

Tap the Button:
- Launch the app on your iOS device.
-  On the main screen, you'll find a button.
-  Tap the button to navigate to the view controller displaying data from the API.
- Explore the Collection View:
- In the presented view controller, you will see a collection view.
- This collection view will populate with data retrieved from the remote API.
