# ChicagoGraffitiReport

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/chicago_graffiti_report`. To experiment with that code, run `bin/console` for an interactive prompt.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_graffiti_report'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_graffiti_report

## Usage

Use this gem to view the report on Chicago graffiti.
```ruby
ChicagoGraffitiReport::Graffiti.where(service_request_number: 16-0755428).count
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chijoy/chicago_graffiti_report.

