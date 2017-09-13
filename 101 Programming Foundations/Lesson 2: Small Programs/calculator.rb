# prompt the user for two numbers
# prompt the user to perform an operation
# perform operatoin on numbers
# puts the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Welcome to my calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation do you want to perform: 1) add 2) subtract 3) multiply 4) divide")
operation = Kernel.gets().chomp()

if operation == '1'
  result = number1.to_i() + number2.to_i()
elsif operation == '2'
  result = number1.to_i() - number2.to_i()
elsif operation == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")