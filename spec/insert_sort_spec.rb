require 'spec_helper'

require 'insert_sort'

describe 'Insertion sort method' do
  it 'should sort an unsorted array' do
    Ary = Array.new()
    Ary.insert_sort([1, 12, 4, 11, 6]).must_equal ([1, 4, 6, 11, 12])
    Ary.insert_sort([41, 14, 100, 20000]).must_equal ([14, 41, 100, 20000])
    Ary.insert_sort([9, 8, 7, 6, 5, 4, 3, 2, 1]).must_equal ([1, 2, 3, 4, 5, 6, 7, 8, 9])

  end

  it 'gets benchmarked' do
    # Ary = Array.new()
    puts 'Best Case'
    puts Benchmark.measure { Ary.insert_sort((1..5_000).to_a) }
    puts 'Worst Case'
    puts Benchmark.measure { Ary.insert_sort((5_000.downto(1)).to_a) }
    puts 'Random'
    puts Benchmark.measure { Ary.insert_sort((1..5_000).to_a.shuffle) }
  end
end
