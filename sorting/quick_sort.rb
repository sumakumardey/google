# quick_sort

def quickSort(arr,from,to)
    return if from >= to 
    pivot = arr[to]
    i = from
    for j in from..(to-1) do
        if(arr[j] <= pivot)
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i = i + 1
        end 
    end
    arr[to] = arr[i]
    arr[i] = pivot
    # p arr[from..(i-1)]
    # p pivot
    p arr
    quickSort(arr,from,i-1)
    quickSort(arr,i+1,to)
    
end