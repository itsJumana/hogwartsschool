# README

This README would normally document whatever steps are necessary to get the
application up and running.

* System dependencies
* Ensure you have the following installed on your system:
- **Ruby 3.2.1**: Use a version manager like [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io) to manage Ruby versions.
- **Bundler**: Install it using `gem install bundler`.
- **MySQL**: Ensure MySQL server is installed and running.

* Configuration
* Update the database.yml file and add your database credentials:
  ```dotenv
   DATABASE_USERNAME
   DATABASE_PASSWORD


* Database creation
  ```bash
  rails db:create


* Database migration
  ```bash
  rails db:migrate

* Seed the database with initial data (Creating Dumbledore as admin):
  ```bash
  bin/rails db:seed


 * Start the Rails server:
   ```bash
   rails s -p 5000
  * Visit the application at http://localhost:5000

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
