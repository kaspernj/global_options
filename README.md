# GlobalOptions

This project rocks and uses MIT-LICENSE.

## Install

Bundle it in your Gemfile:

```ruby
gem 'global_options'
```

Install migrations:
```bash
rails railties:install:migrations
```

Run migrations:
```bash
rails db:migrate
```

## Usage

### Set options

```ruby
GlobalOptions::GlobalOption.set("my_option", "my_value")
```

### Get options

```ruby
GlobalOptions::GlobalOption.get("my_option") #=> "my_value"
```
