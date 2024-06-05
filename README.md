# Ml::Service::Sort

Service enabling sorting for ml-forest (https://github.com/forest-implementation/ml-forest)

## Installation

First get ruby (e.g. [rbenv](https://github.com/rbenv/rbenv)) and [bundler](https://bundler.io/docs.html)

(Optional) Create your gem

    $ bundle gem mygem

Add dependency for the forest

    $ bundle add ml-forest --github=forest-implementation/ml-forest

Add dependency for this service

    $ bundle add ml-service-sort --github=forest-implementation/ml-service-sort


## Usage

```ruby
require "ml/forest"
require "ml/service/sort/quicksort"

forest = Ml::Forest::Tree.new([5, 8, 3, 4, 2, 7] , trees_count: 1, forest_helper: Ml::Service::Sort::QuickSort.new)
sorted = forest.trees.first.to_a.flatten

# sorted: [2, 3, 4, 5, 7, 8]
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ml-service-sort.
