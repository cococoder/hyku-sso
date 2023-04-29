# Hyku::Sso

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'hyku-sso'
```

And then execute:
```bash
$ bundle exec rails g hyku:sso:install
```

Or install it yourself as:
```bash
$ gem install hyku-sso
```

When cloning, you will need to bring in the Hyrax submodule by:

```bash
cd spec/internal_test_hyrax;
git submodule init && git submodule update
```

Then you can build the application from the root folder (`cd ../../`):

```bash
docker-compose up --build web
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
