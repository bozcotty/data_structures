class Array
  def radix_sort(ary)
    # return self if length <= 1

    biggest = ary.max.to_s.length
    biggest.times do |i|
      bucket = Hash.new {|h,k| h[k] = []}
      ary.each do |num|
        digit = (num/10**i) % 10
        bucket[digit] << num
      end
      ary = bucket.values_at(*(0..10)).compact.flatten
    end
    return ary
  end
end

arry = Array.new
test_arry = [414000, 36459, 11, 253, 121, 6040, 3141]
puts arry.radix_sort(test_arry)



