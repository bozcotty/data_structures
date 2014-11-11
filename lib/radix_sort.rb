class Array
  def radix_sort(ary)
<<<<<<< HEAD
    # return self if length <= 1

    biggest = ary.max.to_s.length
    biggest.times do |i|
      bucket = Hash.new { |h, k| h[k] = [] }
      ary.each do |num|
        digit = (num / 10**i) % 10
        bucket[digit] << num
      end
      ary = bucket.values_at(*(0..10)).compact.flatten
    end
    ary
  end
end

arry = []
test_arry = [414_000, 36_459, 11, 253, 121, 6040, 3141]
puts arry.radix_sort(test_arry)
=======
    return self if length <= 1
    num_of_keys = ary.count
    # final_array = []
    # while pv-level < (num_passes-1) do |a_pass|
    #   a_pass
    # end
    # if a key's pv_level doesn't continue on, (ie pv_level of that key = nil), move it to the final array
    #
  end

  def a_pass(ary)
    # create 10 empty buckets
    b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 = [], [], [], [], [], [], [], [], [], []

    #   (1.place all the keys in array in buckets 0-9 based on pv-level being considered, keep them stable)
    ary = ary.to_s
    num = ary[0]
    pv_level = -1
    if num[pv_level] = 0
      b0 << num
    elsif num[pv_level] = 1
      b1 << num
    elsif num[pv_level] = 2
      b2 << num
    elsif num[pv_level] = 3
      b3 << num
    elsif num[pv_level] = 4
      b4 << num
    elsif num[pv_level] = 5
      b5 << num
    elsif num[pv_level] = 6
      b6 << num
    elsif num[pv_level] = 7
      b7 << num
    elsif num[pv_level] = 8
      b8 << num
    else num[pv_level] = 9
         b9 << num
    end

    #   2.then, put all keys back into the ary, in order of their placement in the buckets (ary = [])
    ary = []
    ary << (b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9)

    #   3.pv-level -=1
    #   4.for each key in ary do |move_to_final?|
    #
    #      while key
    #      if key[pv-level] == nil, move key to final array, in order (final_array << key)
    #                                                                  (ary) = (ary - (that key))
    #      key +=1
    #      end
  end

  def num_passes(ary) # find highest place value by largest num in ary
    u = ary
    num_passes = u.max.to_s.length.to_i
    p num_passes
  end
end

A = []
p A.num_passes([414_000, 36_459, 11, 253, 121, 6040, 3141])
p A.radix_sort([414_000, 36_459, 11, 253, 121, 6040, 3141])
p A.a_pass([414_000, 36_459, 11, 253, 121, 6040, 3141])
>>>>>>> binary
