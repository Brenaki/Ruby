 # Input
puts "**Welcome to Library**"

print "Write your first name, please: "
firstName = gets.chomp

print "Write your last name, please: "
lastName = gets.chomp

print "How old are you: "
age = gets.chomp.to_i

 # Output
puts "Hello #{firstName} #{lastName}, you're #{age} years old. Nice to meet you!"
puts "You can take a look at the books if you like."