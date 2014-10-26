class Array
  def radix_sort(ary)
    return self if length <= 1
    num_of_items = ary.count
    # final_array = []
    # while pv-level < (num_passes-1) do |a_pass|
    #   a_pass
    # end
    # if a key's pv_level doesn't continue on, (ie pv_level of that key = nil), move it to the final array
    #

  end

  def a_pass(ary)
    # create 10 empty buckets
    b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 = [],[],[],[],[],[],[],[],[],[]
    # ary = ary
    #   (1.place all the keys in array in buckets 0-9 based on pv-level being considered, keep them stable)
    pv_level = -1
    i = 0
    num = ary[i].to_s
    p num[pv_level].to_i
    num_of_items = ary.count

    while i < (num_of_items - 1)
      if (num[pv_level]).to_i == 0
        b0 << num.to_i
      elsif num[pv_level].to_i == 1
        b1 << num.to_i
      elsif num[pv_level].to_i == 2
        b2 << num.to_i
      elsif num[pv_level].to_i == 3
        b3 << num.to_i
      elsif num[pv_level].to_i == 4
        b4 << num.to_i
      elsif num[pv_level].to_i == 5
        b5 << num.to_i
      elsif num[pv_level].to_i == 6
        b6 << num.to_i
      elsif num[pv_level].to_i == 7
        b7 << num.to_i
      elsif num[pv_level].to_i == 8
        b8 << num.to_i
      else num[pv_level].to_i == 9
        b9 << num.to_i
      end
      i += 1
      pv_level -= 1
      p i
    end

      p b0
      p b1
      p b2
      p b3
      p b4
      p b5
      p b6
      p b7
      p b8
      p b9



    #   2.then, put all keys back into the ary, in order of their placement in the buckets (ary = [])
    # ary = []
    # ary << (b1 + b2 + b3 + b4 + b5 + b6 + b7 +b8 + b9)

    #   3.pv-level -=1
    #   4.for each key in ary do |move_to_final?|
    #
    #      while key
    #      if key[pv-level] == nil, move key to final array, in order (final_array << key)
    #                                                                  (ary) = (ary - (that key))
    #      key +=1
    #      end

  end

  def num_passes(ary) #find highest place value by largest num in ary
    u = ary
    num_passes = u.max.to_s.length.to_i
    p num_passes
  end
end

A = Array.new
p A.num_passes([414000, 36459, 11, 253, 121, 6040, 3141])
p A.radix_sort([414000, 36459, 11, 253, 121, 6040, 3141])
p A.a_pass([414009, 36459, 11, 253, 121, 6040, 3141])

