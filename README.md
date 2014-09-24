# DifferenceUpdateSeed


## Installation

Add this line to your application's Gemfile:

    gem 'difference_update_seed'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install difference_update_seed

## Usage

in db/seeds.rb

```ruby
require 'difference_update_seed'
using DifferenceUpdateSeed

User.seed(:name) do |u|
  u.name = 'AKAMATSU Yuki'
  u.age  = 27
end #=> Insert new record

User.seed(:name) do |u|
  u.name = 'AKAMATSU Yuki'
  u.age  = 27
end #=> Do nothing

User.seed(:name) do |u|
  u.name = 'AKAMATSU Yuki'
  u.age  = 28
end #=> Update 'AKAMATSU Yuki's age
```

## Contributing

1. Fork it ( https://github.com/ukstudio/difference_update_seed/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
