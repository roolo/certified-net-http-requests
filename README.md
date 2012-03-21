## Certified net/http requests

Gem for dealing with `SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed`
( http://martinottenwaelter.fr/2010/12/ruby19-and-the-ssl-error/ ) error. This project is highly inspired by
[certified](https://github.com/stevegraham/certified) project by Stevie Graham

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

## Contributing

1. [Fork it](http://help.github.com/fork-a-repo/)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create new Pull Request](http://help.github.com/send-pull-requests/)
