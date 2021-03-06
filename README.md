# Ryan Miller Portfolio Application

> This is a Ruby on Rails 5 application that allows users to create their own portfolios. Full CRUD functionality for Blog and Portfolio. This app is deployed live at https://ryan-miller-portfolio.herokuapp.com/

### Features

- Real time chat engine for comments
- Blog
- Portfolio
- Drag and drop interface
- Integrated markdown for blog posts
- Twitter API to display technical tweets

## Schema


## Tech Stack
 - Framework: Ruby on Rails v5.2.3
 - Language: Ruby
 - Database: PostgreSQL v7.12.1
 - Query Language: ActiveRecord

### Code Example

To properly utilize markdown in blog, use the following example:

![example](./app/assets/images/code_example.png)

outputs:

```ruby
  def my_great_method
    puts "here it is"
  end
```

```javascript
  alert('Hi there');
```

To install:
 - `clone this repo`
 - `$bundle`

 * Database creation
 - `$bundle exec rails db:create`

* Database initialization
 - `$bundle exec rails db:migrate`
 
 * Seed Database
 - `$bundle exec rails db:seed`

 - Add your own API keys to `.env`:
 ```
   S3_BUCKET_NAME=bucket_name
   AWS_ACCESS_KEY_ID=your_access_key_id
   AWS_SECRET_ACCESS_KEY=your_secret_access_key
   AWS_REGION=your_region

   TWITTER_CONSUMER_KEY=your_twitter_key
   TWITTER_CONSUMER_SECRET=your_twitter_consumer_secret
   TWITTER_ACCESS_TOKEN=your_twitter_token
   TWITTER_ACCESS_SECRET=your_twitter_secret
 ```

* Deployment instructions
 - `$heroku create project-name`
 - `$git push heroku master`
 - Add ENV variables with `$heroku config:set <KEY>=<value>`
 - `$heroku run rake db:migrate`
 - `$heroku run rake db:seed`
* For ActionCable to work in heroku:
- Go to heroku.com and navigate to your app
- In the `overview` tab, cick `Configure Add-ons`
- In the `Add-ons` section, search for `Redis Cloud` and add
- To check proper redis installation on heroku, in your terminal type:
- `$heroku config:get REDISCLOUD_URL`

 ## Core Contributors
 - Ryan Miller, [@ryanmillergm](https://github.com/ryanmillergm)

### How to Contribute
 - Fork and clone the [repo](https://github.com/ryanmillergm/Portfolio.git)
 - Make changes on your fork & push them to GitHub
 - Visit https://github.com/ryanmillergm/Portfolio and click `New pull request`
