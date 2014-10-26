require 'spec_helper'

require 'radix_sort'

describe 'Radix sort method' do
  it 'should sort an unsorted array' do
    Rary = Array.new()
    Rary.radix_sort([3, 15, 7, 140, 5010]).must_equal ([3, 7, 15, 140, 5010])
    Rary.radix_sort([61, 16, 160, 4_003, 26_000, 7]).must_equal ([7, 16, 61, 160, 4_003, 26_000])
    Rary.radix_sort([11, 8, 7, 6, 5, 4, 3, 2, 1]).must_equal ([1, 2, 3, 4, 5, 6, 7, 8, 11])
  end

  it 'gets benchmarked' do
    Rxary = Array.new
    puts 'Best Case'
    puts Benchmark.measure { Rxary.radix_sort((1..5_000).to_a) }
    puts 'Worst Case'
    puts Benchmark.measure { Rxary.radix_sort((5_000.downto(1)).to_a) }
    puts 'Random'
    puts Benchmark.measure { Rxary.radix_sort((1..5_000).to_a.shuffle) }
  end
end
