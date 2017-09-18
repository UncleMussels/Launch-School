require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def input_loop(figure)
  loop do
    num = gets.chomp
    return num if figure.match(/amount|years|/) && integer?(num)
    return num if figure == 'annual' && number?(num)

    prompt(MESSAGES['errors'][figure])
  end
end

prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['amount'])
  loan_amount = input_loop('amount')

  prompt(MESSAGES['annual'])
  apr = input_loop('annual')
  mpr = (apr.to_f / 100) / 12

  prompt(MESSAGES['years'])
  loan_year = input_loop('years')
  loan_month = loan_year.to_i * 12

  payment = (loan_amount.to_i * (mpr / (1 - (1 + mpr)**-loan_month))).round(2)

  prompt(MESSAGES['results'].sub('XX', payment.to_s).sub('YY', loan_month.to_s))

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt(MESSAGES['exit'])
