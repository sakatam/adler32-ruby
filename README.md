# Adler32

A Ruby implementation of Adler-32 checksum algorithm

## Installation

Add this line to your application's Gemfile:

    gem 'adler32'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adler32

## Usage

```ruby
require "adler32"

# with single value
Adler32.checksum 'abc' # => "024d0127"

# multiple arguments can be handled
Adler32.checksum 'abc', 'def' # => "081e0256"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/adler32/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
