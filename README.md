# carsome-project

- carsome-project is an application which shows reviews of various products and allows adding new review. 

## Initial Setup

### 1. Configure Database - Local MySQL

- Setup MySQL as per link: https://www.prisma.io/dataguide/mysql/setting-up-a-local-mysql-database

- Use 'CarsomeSchema.sql' from [backend/migrations] to migrate the database tables and pre-generated data

- MySQL Data Import as per link: https://dotnettutorials.net/lesson/database-export-import-using-mysql-workbench/

### 2. Run

- Ensure .env file is set up according to [backend/src/utils/env-constants.ts]

#### 1. Backend Server

- Change path to backend:
    Run command `cd backend` from root folder
- Install all dependencies:
    Run command `npm install`
- Initialise the server
    Run command `npm run build:start`

#### 2. Frontend - React App

- Change path to frontend:
    Run command `cd frontend` from root folder
- Install all dependencies:
    Run command `npm install`
- Initialise the react app:
    Run command `npm run start`

## Author

- Balagopal G