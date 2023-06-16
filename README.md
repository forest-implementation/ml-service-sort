# Ml::Service::Sort

Service enambling sorting for ml-forest (https://github.com/forest-implementation/ml-forest)

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

## Usage

For example of usage please refer to example project.

Simple usage on ml-forest could look like this

1. install ml-forest alongside with this service

Gemfile
```Ruby
gem "ml-forest"
gem "ml-service-sort"
```

usage
```ruby
require "ml/forest"
require "ml/service/sort/quicksort"

forest = Ml::Forest::Tree.new(input, trees_count: 1, forest_helper: Ml::Service::Sort::QuickSort.new)
sorted = forest.trees.first.to_a.flatten
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ml-service-sort.
