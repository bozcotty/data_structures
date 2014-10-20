require 'spec_helper.rb'

require 'merge_sort'

describe 'Merge sort method' do
  it 'should sort an unsorted array' do
    Msary = Array.new()
    Msary.insert_sort([3, 15, 7, 14, 5]).must_equal ([3, 5, 7, 14, 15])
    Msary.insert_sort([61, 16, 160, 26000]).must_equal ([16, 61, 160, 26000])
    Msary.insert_sort([11, 8, 7, 6, 5, 4, 3, 2, 1]).must_equal ([1, 2, 3, 4, 5, 6, 7, 8, 11])

  end

  it 'gets benchmarked' do
    # Ary = Array.new()
    puts 'Best Case'
    puts Benchmark.measure { Msary.insert_sort((1..5_000).to_a) }
    puts 'Worst Case'
    puts Benchmark.measure { Msary.insert_sort((5_000.downto(1)).to_a) }
    puts 'Random'
    puts Benchmark.measure { Msary.insert_sort((1..5_000).to_a.shuffle) }
  end
end
