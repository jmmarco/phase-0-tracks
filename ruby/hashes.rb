# Enter details of client
# Name, age, number of children, decor theme, payment method,


loop do
	puts "Enter customer name:"
	input = gets.chomp
	break if input == 'done'
end

client = {
	:name => '',
	:age => ''.to_i,
	:num_of_children => ''.to_i,
	:decor_theme => '',
	:payment_method => ''
}
