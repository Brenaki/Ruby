exit = true

loop do
    system("cls")
    puts "******Calculadora******"
    puts "1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Resto da Divisão\n6 - Exponenciação\n7 - Raiz Quadrada\n0 - Sair"
    puts "***********************"
    print "Escolha uma opção: "
    choose = gets.chomp.to_i
    case choose
    when 1
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado da soma é: #{(num1 + num2).round 2}\n"
        system("pause")
    when 2
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado da subtração é: #{(num1 - num2).round 2}\n"
        system("pause")
    when 3
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado da multiplicação é: #{(num1 * num2).round 2}\n"
        system("pause")
    when 4
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado da divisão é: #{(num1 / num2).round 2}\n"
        system("pause")
    when 5
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado do resto da divisão é: #{num1 % num2}\n"
        system("pause")
    when 6
        print "Digite o 1º número: "
        num1 = gets.chomp.to_f
        print "Digite o 2º número: "
        num2 = gets.chomp.to_f
        puts "O resultado da potência é: #{(num1 ** num2).round 2}\n"
        system("pause")
    when 7
        print "Digite o 1º número: "
        num1 = gets.chomp.to_i
        puts "O resultado da raiz é: #{(Math.sqrt(num1)).round 3}\n"
        system("pause")
    when 0
        exit = false
    else
        puts "Opção Inválida"
    end
    break if !exit
end