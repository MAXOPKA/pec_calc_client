# PecCalcClient

Gem for integration with API transport company PEC

[API description](http://pecom.ru/business/developers/api_public/)

[![Gem Version](https://badge.fury.io/rb/pec_calc_client.svg)](https://badge.fury.io/rb/pec_calc_client)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pec_calc_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pec_calc_client

## Usage

Get Delivery Regions: 

```ruby
require 'pec_calc_client'

PecCalcClient::Region.all
```
Extract Delivery Cities by region: 

```ruby
require 'pec_calc_client'

PecCalcClient::Region.all.first.towns
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pec_calc_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
