## Boot-up Commands:

- docker-compose run web rails new -T . --force --no-deps --database=postgresql
- docker-compose build
- docker-compose up
- In another terminal, run:
  - docker-compose run web rake db:create
- To stop, run:
  - docker-compose down
- Run a command:
  - docker-compose run web test
  - docker-compose run web rails g model user

- Install rspec:
  - docker-compose run web rails generate rspec:install