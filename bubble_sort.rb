def bubble_sort(array)
    #keep checking and calling sort until each element is less than previous
    check = true
    while check == true
        check = false
        array.each_index do |i| 
            unless array[i + 1] == nil
                if array[i] > array[i + 1]
                    check = true
                    array[i], array[i + 1] = array[i + 1], array[i]
                end
            end
        end
    end
p array
end




bubble_sort([4,3,78,2,0,2])

       
    
    