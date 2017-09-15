require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

def messages(message, language='spanish')
  MESSAGES[language][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1' then 'adding'
            when '2' then 'subtracting'
            when '3' then 'multiplying'
            when '4' then 'dividing'
            end
  message
end

prompt(messages('welcome'))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt(messages('hello_name') + "#{name}!")

loop do # outer loop
  number1 = ''

  loop do
    prompt(messages('first_number_prompt'))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  number2 = ''

  loop do
    prompt(messages('second_number_prompt'))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  prompt(messages('operation_prompt'))

  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(messages('operation_choice'))
    end
  end

  prompt(messages(operation_to_message(operation)))

  result = case operation
           when '1' then number1.to_f() + number2.to_f()
           when '2' then number1.to_f() - number2.to_f()
           when '3' then number1.to_f() * number2.to_f()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt(messages('result') + "#{result}")

  prompt(messages('calculate_loop'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('exit'))