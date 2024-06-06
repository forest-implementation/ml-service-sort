# frozen_string_literal: true

require_relative "version"

module Ml
  module Service
    module Sort
      class QuickSort
        def split_point(data)
          data.is_a?(Array) ? data.first : data
        end

        def decision(element, split)
          element <=> split
        end

        def group(data, split)
          { -1 => [], 0 => [], 1 => [] }.merge(data.group_by { |x| x <=> split })
        end

        def get_sample(data, _)
          data
        end

        def end_condition(data)
          data.all? { |x| x == data.first }
        end
      
        def self.prettify(tree)
          (tree.branches.values.map do |inout| 
            case inout
              in Node::OutNode
                 inout.data[0]
              in Node::InNode
                prettify(inout)
            end
          end).flatten
        end       
      end
    end
  end
end
