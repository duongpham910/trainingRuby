# prices = [7.99, 25.00, 3.99, 9.99]
# puts prices.class
# prices << 5.99
# prices << 8.99
# p prices

# puts ["d", "o", "g"].join("-")

def my_method(&my_block)
	puts "We're in the method, about to invoke your block!"
	my_block.call
	puts "We're back in the method!"
end

my_method do
	puts "We're in the block!"
end

def take_this
	yield "present"
end

# take_this do |thing|
# 	puts "do/end block got #{thing}"
# end

take_this {|thing| puts "brackets block got #{thing}"}

def pass_parameters_to_block
	puts 1
	yield 9, 3
	puts 3
end

pass_parameters_to_block {|number1,number2| puts number1+number2}

