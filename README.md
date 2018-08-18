# Mongoid Localized Fields Fallback Patch

A patch for mongoid localized fields making it fallback through locale values
that are not only `:nil?` but also `:blank?`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongoid_localized_fields_fallback_patch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_localized_fields_fallback_patch

## Usage

Nothing, just add `gem 'mongoid_localized_fields_fallback_patch'` to your Gemfile
and you're good to go.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomasc/mongoid_localized_fields_fallback_patch.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
