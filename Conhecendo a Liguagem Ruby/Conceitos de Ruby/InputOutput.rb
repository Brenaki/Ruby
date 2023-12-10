# Input
print "Infome seu nome: "
name = gets.chomp

# Output
puts "Olá #{name}, como você está hoje?"


# Score
## Input
print "Infome a nota do 1º Semestre: "
n1 = gets.chomp.to_f
print "Infome a nota do 2º Semestre: "
n2 = gets.chomp.to_f

## Output
puts "A média do semestre é #{((n1 + n2) / 2).round 1}"