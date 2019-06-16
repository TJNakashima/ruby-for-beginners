number1 = 0
number2 = 0
total = 0

#to_i = convert to int
puts 'Inform number 1: '
number1 = gets.chomp.to_i

puts 'Inform number 2: '
number2 = gets.chomp.to_i

#total = number1 + number2
#total = number1 - number2
#total = number1 * number2
total = number1 / number2
puts total

# -- Comparison operators --
v1 = 10
v2 = 11

puts v1 > v2 
puts v1 >= v2 
puts v1 < v2 
puts v1 <= v2 
puts v1 != v2 
puts v1 == v2 
puts v1.eql?(v2) 