[![Build Status](https://api.shippable.com/projects/5472f888d46935d5fbbe6633/badge?branchName=master)](https://app.shippable.com/projects/5472f888d46935d5fbbe6633/builds/latest)
[![Code Climate](https://codeclimate.com/github/kaspernj/global_options/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/global_options)
[![Test Coverage](https://codeclimate.com/github/kaspernj/global_options/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/global_options)

# GlobalOptions

This project rocks and uses MIT-LICENSE.

## Install

Bundle it in your Gemfile:

```ruby
gem 'global_options'
```

Run migrations through plugin_migrator:
```
bundle exec rake plugin_migrator:migrate
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
