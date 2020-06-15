# Cashbacker
> Cashback Application

You can access the application on Heroku on the following link: https://pure-retreat-67019.herokuapp.com/

### Endpoints

This is a simple application with an admin and a page displaying current offers.

Root is used for the available Offers (https://pure-retreat-67019.herokuapp.com/)

You can access the admin at https://pure-retreat-67019.herokuapp.com/admin/offers

## Development

### Local environment

You can run the application by following these steps:

You will need Ruby 2.7 and PostgreSQL installed

1. Install bundler: `gem install bundler`

2. Install remaining dependencies: `bundle install`

3. Run `bundle exec rails db:setup` to create the database and seed it on development

4. Run `bundle exec rails server` to start the server

To configure username and password to development and testing databases, you can change settings on `/config/database.yml`

### Tests

You can run test suit by using `bundle exec rspec` command

