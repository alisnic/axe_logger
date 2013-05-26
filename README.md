# FancyLogger

Standard Ruby logger, except fancier.

## Installation

Add this line to your application's Gemfile:

    gem 'fancy_logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancy_logger

## Usage

It's the same logger you use every day:

    l = FancyLogger.new(STDOUT)

except it colores warning levels, and prints out th file, line, and function
from which it was called:

![screenshot]("https://github.com/alisnic/fancy_logger/raw/master/screenshot.png screnshot")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
