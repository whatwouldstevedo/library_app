# Library App

Library App helps you find books from different libraries around the world. You can also add your own library and fill it with books which your want to share with.

##### 1. Prerequisites

The setups steps expect following tools installed on the system.

- Ruby [2.6.7](https://www.ruby-lang.org/en/documentation/installation/)
- Rails [5.2.6](https://github.com/rails/rails/tree/v5.2.6)
- Node.js[16.10](https://nodejs.org/ru/download/releases/)
- PostgreSQL[12.8](https://www.postgresql.org/download/) 

##### 2. Installing bundler and dependencies:

```bash
gem install bundler
```

```bash
bundle install
```
##### 3. Prepare the database:

```bash
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
```
##### 4. Start the Rails server:

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000