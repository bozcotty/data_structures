class Array
  def radix_sort(ary)
    return self if length <= 1
    # pv-level = 0 (0 represents the ones place, -1 is the 10's place, etc)
    # num_of_keys = ary.count
    # final_array = []
    # while pv-level < (///num_passes-1///) do |///a_pass///|
    #   1.place all the keys in array in buckets 0-9 based on pv-level being considered, keep them stable
    #   2.then, put all keys back into the ary, in order of their placement in the buckets (ary = [])
    #                                                                                      (b0 = [], b1 = [])
    #   3.pv-level -=1
    #   4.for each key in ary do |move_to_final?|
    #
    #      while key
    #      if key[pv-level] == nil, move key to final array, in order (final_array << key)
    #                                                                  (ary) = (ary - (that key))
    #      key +=1
    #      end
    # end
    # if a key's pv_level doesn't continue on, (ie pv_level of that key = nil), move it to the final array
    #

  end

  def a_pass
    b0 = []
    b1 = []
    b2 = []
    b3 = []
    b4 = []
    b5 = []
    b6 = []
    b7 = []
    b8 = []
    b9 = []
    #

  end

  def num_passes(ary) #find highest place value by largest num in ary
    u = ary
    num_passes = u.max.to_s.length.to_i
    p num_passes
  end

  # def sortpass #or is this part of the radix_sort definition?
  #   pass = 0
  #   (0..(max_place_val-1)) each do |pass|

  #   end
  # end



end

A = Array.new
p A.num_passes([414000, 36459, 11, 253, 121, 6040, 3141])
p A.radix_sort([414000, 36459, 11, 253, 121, 6040, 3141])
