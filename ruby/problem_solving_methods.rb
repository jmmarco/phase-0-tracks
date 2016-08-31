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

# def fibonacci(num)
# 	arr = [0,1]

# 	i = 2
# 	index_x = 0
# 	index_y = 1

# 	while i < num
# 		#puts "Array at #{arr.at(index_x)}"
# 		#puts "Array at #{arr.at(index_y)}"

# 		element = ( arr.at(index_x) + arr.at(index_y) )
# 		arr << element
# 		index_x += 1
# 		index_y += 1
# 		i += 1
# 	end
# 	puts "Our array is: #{arr.last}"
# 	return arr.last
# end

# #fibonacci(100)


# # Add driver code

# puts "Enter fibonacci number:"
# fib_num = gets.chomp.to_i
# puts "Please enter correct result that is expected"
# target = gets.chomp.to_i

# # Check number
# if target == fibonacci(fib_num)
# 	puts "Yay it works pefectly"
# end

### Pseudocode for a Bubble sort

# Take an array
#  - For each item in array and compare to second item in array
#	- If the first is greater than the first item, then first remains in place
#	- If both items are equal, they remain unchanged
#   - Else the first is less than the second item, then we swap them

# new_array = [5,1,4,3]

# final_array_done = [1,5,3,4]

# def bubble_sort(arr)

# 	if arr.length % 2 == 0
# 		# implement sort algorithm
# 		i = 0
# 		index_a = 0
# 		index_b = 1

# 		while i < arr.length

# 			a = arr.at(index_a)
# 			b = arr.at(index_b)

# 			if a == nil || b == nil
# 				break
# 			end

# 			puts "A is #{a} and B is #{b}"

# 			final_array = []

# 			if a > b
# 				# something goes here
# 				pos1 = b
# 				pos2 = a
# 				final_array << pos1
# 				final_array << pos2
# 				#puts "A is #{pos1} and B is #{pos2}"
# 				#puts "Final array is #{final_array}"
# 			else
# 				pos1 = a
# 				pos2 = b
# 				final_array << pos1
# 				final_array << pos2
# 				#puts "A is #{pos1} and B is #{pos2}"
# 				#puts "Final array is #{final_array}"
# 			end

# 			index_a += 1
# 			index_b += 1
# 			i +=1
# 		end
# 		puts "Final array is #{final_array}"
# 	else
# 		puts "You must supply a even numbered array"
# 	end

# end

# bubble_sort(new_array)

# Bubble sort (again)

example_array = [5, 1, 4, 2, 8]


def bubble_sort(arr)

	index = 0
	length_array = arr.length
	index_a = 0
	index_b = 1

	while index < length_array

		# Create index variables for a and b



		# Get the value of the first two elements
		a = arr[index_a]
		b = arr[index_b]

		puts "a is now: #{a} and b is now: #{b}"

		# Compare them
		if a > b
			# Swap them
			arr[index_a] = b
			arr[index_b] = a
		end

		# Increment things
		if index_b == length_array
		index_a += 1
		index_b += 1

		puts "index_a is now: #{index_a} and index_b is now #{index_b}"

		index += 1
	end
	puts "The array is now: #{arr}"
end

bubble_sort(example_array)


