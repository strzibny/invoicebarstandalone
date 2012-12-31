# Standalone InvoiceBar

This repo shows usage of InvoiceBar Engine/RubyGem as a standalone application.

It simply loads the application at `/`.

## Changes to the newly generated Rails app

Create a new Rails app:
```
$ rails new standalone
```
Specify the dependency:
```ruby
# Gemfile
gem 'invoice_bar'
```
Update by running `bundle` command:
```
$ bundle
```
Load the Engine:
```ruby
# config/routes.rb
mount InvoiceBar::Engine => "/"
```
Copy the migration files using `rake`:
```
$ rake invoice_bar:install:migrations
```
Create db and run migrations:
```
$ rake db:migrate
```
And run the app:
```
$ rails s
```
That`s it!