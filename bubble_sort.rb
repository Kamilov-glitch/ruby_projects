# Sorting numeric values in an array

def bubble_sort(array)
  array.length.times do
    for x in 0..array.length - 2
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2, 82, 4, 5 ,7, 9, 0])
