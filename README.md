## [Landmhel Realestate Website](http://landmhel.com)

This is the codebase for Landmhel's Realestate website written in Ruby on Rails.

Rails Version: 4.0.0.

Recommended Ruby Version: Ruby 2.0.0p451

Database: MySQL


## Getting Started

Run `bundle install` to install all dependencies

Run `rake db:migrate` to migrate the database

*optional*

Run `rake db:seed` to add some test listing objects

**File uploads**

Files are uploaded to S3, and ENV variables need to be set to get it working.

So make sure to set these 3 ENV vars:

```
AWS_ACCESS_KEY_ID
AWS_BUCKET_NAME
AWS_SECRET_ACCSS_KEY
````


Run `rails s` to run the server.

Go to [http://localhost:3000](http://localhost:3000) to view the website.


## Testing

My tests are still under construction, but I'm using `mini_test`, and `factory_girl` for my tests