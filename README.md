# PecCalcClient

Gem for integration with API transport company PEC

API description PAGE
[API description](http://pecom.ru/business/developers/api_public/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pec-calc-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pec-calc-client

## Usage

Get Delivery Regions: 

```ruby
require 'pec-calc-client'

PecCalcClient::Region.all
```
Extract Delivery Cities by region: 

```ruby
require 'pec-calc-client'

PecCalcClient::Region.all.first.towns
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pec-calc-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
