# CoinFund

CoinFund Rails models packaged as a Rails 5 engine.

## Usage

Follow the installation instructions below in a project that wishes to consume CoinFund migrations and models. The consuming project automatically gets all of the migrations by running:

    $ rake db:migrate

Then, the parent project can consume the models through the `Coinfund` module:

    > Coinfund::User.last


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coinfund'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install coinfund
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
