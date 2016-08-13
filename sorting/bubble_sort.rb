# buble sort
# complexity O(n^2)
def bubble_sort(array)
  length = array.size - 1
  for i in 0..length do
    for j in 0..(length-i-1) do
      if(array[j] > array[j+1])
        temp = array[j+1]
        array[j+1] = array[j]
        array[j] = temp
      end
    end
    p array
  end
  array
end