# def search_array(arr , num )

#     i = 0
#     while i < arr.length
#         element = i - 1

#         i += 1
#         if arr[i] == num
#             puts i
#         else
#             return nil

#         end
#     end

# end

# search_array([2,4,6,8,10] , 3 )
# search_array([2,4,6,8,10] , 8 )

###

# Fibonacci

def fibonacci(num)
	arr = [0,1]

	i = 2
	index_x = 0
	index_y = 1

	while i < num
		#puts "Array at #{arr.at(index_x)}"
		#puts "Array at #{arr.at(index_y)}"

		element = ( arr.at(index_x) + arr.at(index_y) )
		arr << element
		index_x += 1
		index_y += 1
		i += 1
	end
	puts "Our array is: #{arr.last}"
	return arr.last
end

#fibonacci(100)


# Add driver code

puts "Enter fibonacci number:"
fib_num = gets.chomp.to_i
puts "Please enter correct result that is expected"
target = gets.chomp.to_i

# Check number
if target == fibonacci(fib_num)
	puts "Yay it works pefectly"
end
