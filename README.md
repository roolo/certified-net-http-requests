## Certified net/http requests

[![Join the chat at https://gitter.im/roolo/certified-net-http-requests](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/roolo/certified-net-http-requests?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Gem for dealing with `SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed`
( http://martinottenwaelter.fr/2010/12/ruby19-and-the-ssl-error/ ) error. This project is highly inspired by
[certified](https://github.com/stevegraham/certified) project by Stevie Graham

[![Gem Version](https://badge.fury.io/rb/certified-net-http-requests.png)](http://badge.fury.io/rb/certified-net-http-requests)

## Installation

1. Add this line to your application's Gemfile:

    gem 'certified-net-http-requests'

2. Bundle project:

    $ bundle

Or install it yourself as:

    $ gem install certified-net-http-requests

## Usage

Just require certified-net-http-requests gem in your code

    require 'rubygems'
    require 'certified-net-http-requests'

You should also first and time to time update your certification authority bundle

    $ update-ca-bundle

## Example code

    require 'net/https'
    require 'rubygems'

    require 'certified-net-http-requests' # Try to comment this line after first runnning and run this code again

    http = Net::HTTP.new('encrypted.google.com', 443)          # Create a connection
    http.use_ssl = true
    header, body = http.get('/')

    puts header

## Contributing

1. [Fork it](http://help.github.com/fork-a-repo/)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create new Pull Request](http://help.github.com/send-pull-requests/)
