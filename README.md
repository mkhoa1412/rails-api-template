# rails-app-template-sustainable

This is a Rails Application Template that based on https://github.com/davetron5000/rails-app-template-sustainable
**This is for Rails 6.1 only!**

## To use

### From The Internets

```
bin/rails new my-app --api \
    --skip-bundle \
    --skip-turbolinks \
    --skip-sprockets \
    --skip-spring \
    --skip-listen \
    --skip-action-cable \
    --database=postgresql \
    --template=https://raw.githubusercontent.com/mkhoa1412/rails-api-template/master/template.rb
```

### Locally

```
git clone https://github.com/mkhoa1412/rails-api-template
rails new my-app --api \
      --rc=rails-api-template/.railsrc \
      --template=rails-api-template/template.rb
```

## What you get

In particular:

* Gems:
  * Removes Gems that cause problems:
    - Turbolinks makes your app feel slow and broken
    - Spring creates an unstable development environment
  * Gems for better testing:
    - Factory Bot to manage test data
    - Faker to provide fake values for that data
    - minitest-reporters to get more useful test run output
  * Gems for development:
    - dotenv-rails to allow management of local UNIX environments
    - foreman to run multiple processes locally
  * Gems for managing security issues:
    - Brakeman
    - bundler-audit
  * Gems for better production behavior:
    - lograge for single-line logging
    - sidekiq for background jobs
    - Postgres
* Dev Workflow
  - `bin/setup` that does a more involved setup
  - `bin/ci` runs all quality checks (tests, brakeman, bundle audit, yarn audit)
  - `bin/run` runs the app locally
  - `bin/sql` get a SQL prompt to your local database
  - `bin/db-{migrate,rollback}` - migrate and rollback  both dev and test in one command
  - `bin/release` - Release phase script for Heroku to run migrations
* Other Things
  - Removes `config/database.yml` and `config/secrets.yml` because your app will get all configuration from `ENV`
  - SQL-based schema management so you can use any feature of Postgres you like
  - No stylesheets or helpers generated by generators since they provide a false sense of modularity that is of
  zero benefit.
  - A simple base `ApplicationService` and a service class generator `bin/rails g service MyThing` to encourage
  putting code in `app/services`
  - All `datetime` fields in migrations uses `timestamp with time zone` which is the proper type in Postgres.
  - A method `confidence_check` to allow validating assumptions in tests separate from asserting code behavior.
  - A method `not_implemented!` to allow skipping a test you have not implemented
  - A test to lint all your factories

## FAQ

