# Challange-Invoice-Consultation

## Requirements

* Ruby version
  ```
  ruby 3.0.6
  ```
* Rails verion
  ```
  Rails 6.0.6.1
  ```
* Database
  ```
  psql (PostgreSQL) 14.10
  ```

## Instructions

### Configuration
 Create the .env file with the env.example, set correct values to the environment variables for the database connection.
 ```
DB_USERNAME=
DB_PASSWORD=
DB_URL=
DB_DATABASE=

DB_TEST_USERNAME=
DB_TEST_PASSWORD=
DB_TEST_URL=
DB_TEST_DATABASE=
 ```

### Install dependencies
 ```
 bundle install
 ```

### Database creation
 ```
 rails db:create && rails db:migrate
 ```

### Run the test suite
 ```
  rspec spec/
 ```

### Run Server
 ```
 rails s
 ```

### Extra information

 - Use Rubocop for linting Ruby code, to see the offenses, execute the command ```bundle exec rubocop```
 - Use SimpleCov to coverage analysis, every time the tests are run, the coverage is updated, can be view with the command, Mac ```open coverage/index.html``` Ubuntu ```xdg-open coverage/index.html```
 - There is the file ```challange-invoice-consultation.postman_collection.json``` you can import it into postman to work with request examples
 