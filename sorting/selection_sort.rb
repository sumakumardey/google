# selection_sort
# complexity O(n^2)
def selection_sort(array)
  length = array.size - 1
  for i in 0..(length-1) do
    for j in i+1..length do
      if(array[i] >  array[j])
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
    p array
  end
  p array
end