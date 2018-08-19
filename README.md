# Mongoid Localized Fields Fallback Patch

[![Build Status](https://travis-ci.org/tomasc/mongoid_localized_fields_fallback_patch.svg)](https://travis-ci.org/tomasc/mongoid_localized_fields_fallback_patch) [![Gem Version](https://badge.fury.io/rb/mongoid_localized_fields_fallback_patch.svg)](http://badge.fury.io/rb/mongoid_localized_fields_fallback_patch) [![Coverage Status](https://img.shields.io/coveralls/tomasc/mongoid_localized_fields_fallback_patch.svg)](https://coveralls.io/r/tomasc/mmongoid_localized_fields_fallback_patch)

A patch for [Mongoid](https://github.com/mongodb/mongoid) localized fields
making them fallback through translations which are not only `#nil?` but also
`#blank?`.

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

Just add `gem 'mongoid_localized_fields_fallback_patch'` to your Gemfile, 
run `bundle install` and you're good to go.

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
