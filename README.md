# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
* Ensure you have the following installed on your system:
- **Ruby 3.2.1**: Use a version manager like [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io) to manage Ruby versions.
- **Bundler**: Install it using `gem install bundler`.
- **MySQL**: Ensure MySQL server is installed and running.

* Configuration
* Create a .env file and add your database credentials:
  ```dotenv
   DATABASE_USERNAME=your_username
   DATABASE_PASSWORD=your_password


* Database creation
  ```bash
  rails db:create


* Database migration
  ```bash
  rails db:migrate

 * Start the Rails server:
   ```bash
   rails s -p 5000
  * Visit the application at http://localhost:5000

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
