# StupidFileWriter

This gem has one simple task. It should create a file with the given content. It creates the path if it's not existent.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stupid_file_writer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stupid_file_writer

## Usage

```ruby
require 'stupid_file_writer'

StupidFileWriter.write('path/to/file.txt', 'This is my content')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/stupid_file_writer.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

