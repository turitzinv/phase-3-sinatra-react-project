# Personal Library - Backend

Personal Library is an application that assists you in storing and organzing all of your books.  This is the backend portion of the application.

# Video Demonstration of Application

https://youtu.be/uesP27_4azk

# Running the backend (http://localhost:9292)

```
git clone git@github.com:turitzinv/phase-3-sinatra-react-project.git
cd phase-3-sinatra-react-project
cd backend
bundle exec rake server
```

# application_controller

Below are the available data requests:

  /libraries
  - Will generate all libraries and their associated books.

  /libraries/:id
  - Will generate a specific library with its associated books.
  
  /books
  - Will generate all books with their associated library.
  
  /books/:id
  - Will generate a specific book with its associated library.

  # Models
  - Book, belongs to a library.
  - Library, has many books.

  # Migrations
  
  Two migrations are made to create a table for libraries and a table for books.

  The database is populated with sameple data from seeds.rb to demonstrate how the application will appear.

# Frontend

This application utilizes a React frontend, click to view: https://github.com/turitzinv/phase-3-frontend