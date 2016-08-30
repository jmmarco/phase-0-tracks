def search_array(arr , num )

    i = 0
    while i < arr.length
        element = i - 1

        i += 1
        if arr[i] == num
            puts i
        else
            return nil

        end
    end

end

search_array([2,4,6,8,10] , 3 )
search_array([2,4,6,8,10] , 8 )
