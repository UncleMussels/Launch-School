require "pry"

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def integer?(num)
  num.to_i.to_s == num
end

def input_loop(figure)
  loop do
    response = gets.chomp
    return response if figure == 'annual' && valid_number?(response)
    return response if integer?(response)

    prompt(errors(figure))
  end
end

def errors(figure)
  case
  when 'amount' then "That doesn't seem like a whole number..."
  when 'annual' then "The APR can only include numbers and a decimal."
  when 'years'  then "I don't think years work that way..."
  end
end

prompt("You have a mortgage and I'm a calculator. Let's crunch some numbers!")

loop do
  prompt("Enter your loan amount rounded to the nearest dollar:")
  loan_amount = input_loop('amount')

  prompt("What's the Annual Percentage Rate (APR)?")
  apr = input_loop('annual')

  prompt("What is the length of the loan in years?")
  loan_years = input_loop('years')

  prompt("Very good! Calculating your information...")

  monthly_percentage_rate = (apr.to_f * 0.01) / 12
  loan_months             = loan_years.to_f * 12
  monthly_payment         = loan_amount.to_i * (monthly_percentage_rate / (1 - (1 + monthly_percentage_rate)**(-loan_months)))

  prompt("With a monthly interest rate of #{(monthly_percentage_rate * 100).round(2)}%, " +
         "you'll pay $#{monthly_payment.round(2)} for #{loan_months.round} months!")
  
  prompt("Want to calculate again? Enter 'y' to start over")
  answer = gets.chomp
  break unless answer.downcase == 'y'
end
