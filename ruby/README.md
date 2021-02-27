[![Gem Version](https://img.shields.io/gem/v/roulette-wheel-selection.svg?style=flat)](https://rubygems.org/gems/roulette-wheel-selection)
[![Build Status](https://github.com/khiav223577/roulette-wheel-selection/workflows/Ruby/badge.svg)](https://github.com/khiav223577/roulette-wheel-selection/actions)
[![RubyGems](http://img.shields.io/gem/dt/roulette-wheel-selection.svg?style=flat)](https://rubygems.org/gems/roulette-wheel-selection)
[![Code Climate](https://codeclimate.com/github/khiav223577/roulette-wheel-selection/badges/gpa.svg)](https://codeclimate.com/github/khiav223577/roulette-wheel-selection)
[![Test Coverage](https://codeclimate.com/github/khiav223577/roulette-wheel-selection/badges/coverage.svg)](https://codeclimate.com/github/khiav223577/roulette-wheel-selection/coverage)

# roulette-wheel-selection


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'roulette-wheel-selection'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roulette-wheel-selection

## Usage

### require the library
```rb
require 'roulette-wheel-selection'
```

### Hash format

```rb
RouletteWheelSelection.sample(
  'cola'   => 40,
  'sprite' => 20,
  'fanta'  => 30,
  'wine'   => 40,
)
# => 'cola'
```

#### sample n random elements

```rb
roulette = RouletteWheelSelection.new('ps4' => 50, 'switch' => 40, 'xbox' => 30)
roulette.sample(3)
# => ['ps4', 'switch', 'xbox']
```

### Array format

```rb
drinks = [
  { name: 'cola', weight: 40 },
  { name: 'sprite', weight: 20 },
  { name: 'fanta', weight: 30 },
  { name: 'wine', weight: 40 },
]
RouletteWheelSelection.sample(drinks, :weight)
# => { name: 'cola', weight: 40 }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khiav223577/roulette-wheel-selection. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

