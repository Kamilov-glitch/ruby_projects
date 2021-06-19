def stock_picker(array)
  new_array = []
  min_int = 0
  for x in 0..array.length - 1
    for y in x..array.length - 1
      if array[y] - array[x] > min_int
        min_int = array[y] - array[x] 
        new_array.push(x)
        new_array.push(y)
      end
    end
  end
  new_array[-2..-1]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
