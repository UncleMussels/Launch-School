def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  message = case op
            when '1' then 'Adding'
            when '2' then 'Subtracting'
            when '3' then 'Multiplying'
            when '4' then 'Dividing'
            end
  message
end

prompt("Welcome to my calculator! State your name: ")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("You must enter a name!")
  else
    break
  end
end

prompt("Hello, #{name}!")

loop do # outer loop
  number1 = ''

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  number2 = ''

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  operation_prompt = <<-MSG
    What operation do you want to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operation_prompt)

  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Please choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operation)} the numbers...")

  result = case operation
           when '1' then number1.to_i() + number2.to_i()
           when '2' then number1.to_i() - number2.to_i()
           when '3' then number1.to_i() * number2.to_i()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to calculate again? (Y to start over)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Numbers are great. Thanks for playing!")