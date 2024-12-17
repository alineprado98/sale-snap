<!-- Copie este código e cole no seu README.md -->

# About App 

The Store App is an application aimed at managing a wide variety of products, providing users with the ability to register, edit, and delete products in an intuitive and efficient manner. With robust features, the app offers a comprehensive experience for organizing and accessing information about products of interest.

## Features

1.  <strong>Product Registration:</strong>
    -   Allows users to register complete details about their products, including name, description, price, and associated images.
2.  <strong>Filters and Sorting:</strong>
    -   Offers advanced filtering features, enabling users to categorize products by date, price, minimum, and maximum value. Additionally, it allows alphabetical sorting, facilitating searches.
3.  <strong>Image Management:</strong>
    -   Enables the association of individual images with each product, providing a complete and detailed view of the registered items.
4.  <strong>Product Editing and Deletion:</strong>
    -   Offers the flexibility to edit or delete information about already registered products, ensuring the maintenance of accurate and up-to-date data.
5.  <strong>Updated Product List:</strong>
    -   Maintains a dynamic product list, providing users with a consolidated view of all registered items.
  
6.  <strong>Authentication and Data Persistence:</strong>
    -   Implements a secure login system, allowing users to access the app with ease. After the first login, the app stores the login state, providing a continuous user experience without the need for repeated logins.

## Architecture

The Store App adopts the Clean Dart architecture, a proposal from the Flutter community based on Clean Architecture. This architectural approach promotes the creation of structured, modular, and maintainable code, ensuring efficient scalability and testability.

### Layers of the Clean Dart Architecture:

1.  <strong>Presentation:</strong>
    -   Responsible for the application's presentation layer, including UI, widgets, and screen state management. Here, the Presenter manages the presentation logic and communicates with the domain layer.
2.  <strong>Domain:</strong>
    -   Contains the business rules and domain logic of the application. Entities represent domain objects, and use cases define the operations that can be performed within the application.
3.  <strong>Data:</strong>
    -   Responsible for communication with external data sources. It is divided into:
        -   <strong>Datasources:</strong> Represents the source of data, which can be APIs, databases, etc.
        -   <strong>DTOs (Data Transfer Objects):</strong> Models used to transfer data between layers.
        -   <strong>Repositories:</strong> Abstractions that define how data is retrieved and stored.

### Representative Image of the Clean Dart Architecture:

![Clean Dart Architecture](https://miro.medium.com/v2/resize:fit:1400/1*07Y2uX-7HYQa1syEzoXukA.png)

In the image above, we can see the basic structure of the Clean Dart architecture. Each layer has a clear responsibility, with the arrow indicating the allowed direction of dependency. This ensures that the innermost layers (like Domain) do not depend on the outer layers (like Data).

<strong>Main Benefits of the Clean Dart Architecture:</strong>

-   <strong>Modularity:</strong> Facilitates the separation of responsibilities and the creation of independent modules.
-   <strong>Testability:</strong> Isolated layers enable effective and simplified unit testing.
-   <strong>Maintainability:</strong> The organized structure makes it easier to identify and fix issues.
-   <strong>Scalability:</strong> Allows the project to grow in a sustainable and controlled manner.

<h1>Main Tools Used in the App:</h1>

<p>The Store App uses a variety of tools and services to provide a complete experience for users. Here are the main tools incorporated in the development of the app:</p>

<h2>Firebase Authentication:</h2>
<p>The Firebase Authentication service is used to enable users to register and log in securely. With this tool, we ensure a reliable and efficient authentication process.</p>

<h2>Firebase Firestore Database:</h2>
<p>Firestore, also part of the Firebase ecosystem, is used as the database to store data related to the products added by users. It provides a real-time NoSQL database solution, offering speed and scalability.</p>


<h2>Firebase Storage:</h2>
<p>To store and retrieve images associated with the registered products, we use Firebase Storage. This tool enables efficient management of multimedia resources, contributing to a rich visual experience within the app.</p>

<h2>Shared Preferences:</h2>
<p>The Shared Preferences library is used for local storage of user login data. This tool enables the persistence of essential information, such as the user's login state, even after the app is closed.</p> 

<h2>Main Libraries:</h2>
<h3>firebase_storage:</h3>
<ul> 
  <li>Version: ^11.5.6</li> <li>Description: Library for interacting with Firebase Storage, facilitating file upload and download.</li> 
</ul>
<h3>firebase_auth:</h3> 
<ul> <li>Version: 4.15.3</li>
  <li>Description: Library that provides methods for user authentication using Firebase Authentication.</li>
</ul> 
<h3>shared_preferences:</h3> 
<ul> 
  <li>Version: ^2.2.2</li>
  <li>Description: Library for simple key-value data persistence in Flutter. Used to store local information such as login state.</li> 
</ul> 
<h3>flutter:</h3>
<ul> 
  <li>Version: sdk '>=2.0.0 <3.0.0'</li> 
    <li>Description: Development framework for creating natively compiled applications for mobile, web, and desktop from a single codebase.</li>
  </ul>
    <p>These tools play a crucial role in implementing key features of the Store App, contributing to the security, efficiency, and usability of the application. By integrating these technologies, we aim to offer a comprehensive and reliable solution for managing various products by users.</p>
    
## Screens

<h1 align="center">
    <a href="https://imgur.com/007uH7C"><img src="https://github.com/lineprado98/store/blob/develop/assets/design_screen.png" title="source: imgur.com" /></a>
    <br />
</h1>

## Steps to Run:

```bash
git clone https://github.com/user-name/store-app.git
cd store-app
flutter pub get
flutter run









