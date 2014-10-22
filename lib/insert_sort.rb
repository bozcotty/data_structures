class Array
  def insert_sort(array)
    (1..array.length - 1).each do |index|
      back = index
      while back > 0
        if array[back - 1] > array[back]
          # swap
          array[back - 1], array[back] = array[back], array[back - 1]
          back -= 1
        else
          back = 0
        end
      end
    end
    p array
  end
end

F = []
F.insert_sort([4, 51, 3, 8, 6, 2, 9, 10, 12, 18])
