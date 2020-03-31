## Boot-up Commands:

- docker-compose run web rails new -T . --force --no-deps --database=postgresql
- docker-compose build (run if you change your Dockerfile or Gemfile)
- docker-compose up
- In another terminal, run:
  - docker-compose run web rake db:create
- To stop, run:
  - docker-compose down
- Run a command:
  - docker-compose run web rspec
  - docker-compose run web rails g model user
- Install rspec:
  - docker-compose run web rails generate rspec:install
- Create the Databases:

  - docker-compose run web rails db:create

- Generate a model:

  - docker-compose run web rails g model user name:string

- Run the migrations:

  - docker-compose run web bin/rails db:migrate RAILS_ENV=test
  - docker-compose run web bin/rails db:migrate RAILS_ENV=development

- Run Tests:
  - docker-compose run web rspec
