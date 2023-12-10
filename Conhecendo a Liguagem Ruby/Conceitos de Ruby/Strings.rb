# Variables
name = "victor"
sentece = "my name is "
age = 18 

# Maiúsculo
puts name.upcase
puts sentece.upcase

# Minúsculo
puts name.downcase
puts sentece.downcase

# Inverter
puts name.reverse
puts sentece.reverse

# 1º Maiúscula
puts name.capitalize
puts sentece.capitalize

# Contatena 1
puts sentece + name

# Contatena 2
puts sentece << name

# Contatena 3
puts sentece.concat("<3")

# Escrever Variavel dentro de aspas duplas
puts "#{sentece}, and this is my fourty code in Ruby!"
puts "#{sentece}, and I'm #{age} years old."

# Fazer operações dentro de aspas duplas
puts "13 + 13 = #{13+13}"