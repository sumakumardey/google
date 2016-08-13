# insertion sort

def insertion_sort(array)
  length = array.size - 1
  for i in 0..length do
    insert_index = i
    for j in 0..i do
      if(array[i] < array[j])
        insert_index -= 1
      end
    end
    array.insert(insert_index,array.delete_at(i))
    p array
  end
  array
end