class Array
  def merge_sort
    return self if self.length <= 1

    midpoint = self.length/2
    l = self[0...midpoint]
    r = self[midpoint...self.length]
    l = l.merge_sort
    r = r.merge_sort
    return merging(l, r)
  end

  private

  def merging(l, r)
    # puts "merging #{l} + #{r}"
    sorted_ary = []
    while l.count > 0 && r.count > 0
      if l[0] <= r[0]
        sorted_ary << l.shift
      else
        sorted_ary << r.shift
      end
    end
    if l.count == 0
      sorted_ary << r
    else r.count == 0
      sorted_ary << l
    end
    sorted_ary.flatten
  end
end

u = Array.new
u = [4,3,6,7,4,2]
p u.length
p u.merge_sort
