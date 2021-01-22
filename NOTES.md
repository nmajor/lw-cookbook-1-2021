Todo list
- Start with the Model (Rails too)
  
Task class [model]
  - Description
  - Done

Repository
  - The list of tasks



Single Responsibility Principle

MVC
- Model View Controller
  - Abstract way of organizing and structuring our code
  - Software Architecture
  - More stable, easy to understand, scalable, maintainable
  - Web

- Model
  - Handle the DATA of our app
  - (NEVER TALKS DIRECTLY TO THE VIEW)
- View
  - User friendliness
  - Handles the user interaction
  - HTML
  - Renders the html
  - (NEVER TALKS DIRECTLY TO THE MODEL)
- Controller
  - Connecting the model and the view
  - Gives the view the data it needs to interact with the user

        action/request (The use wants to do something)
              ||
              ||
              ||
          [  Router  ] // User intent
              ||
          [Controller]

[Model     ]           [View]
[Repository]
