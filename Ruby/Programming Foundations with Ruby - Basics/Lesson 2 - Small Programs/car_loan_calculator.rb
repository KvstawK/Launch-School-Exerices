def user_input(text, convert_to_integer: false)
  puts "=> #{text}"
  user_info = gets.chomp

  loop do
    if convert_to_integer
      return user_info.to_i if /\A[+-]?\d+\z/.match?(user_info)
    elsif /\A[+-]?\d+(\.\d+)?\z/.match?(user_info)
      return user_info.to_f
    end

    puts "Only valid numbers allowed, please try again! "
    user_info = gets.chomp
  end
end

def calculate(loan_amount, loan_arp, loan_duration)
  annual_interest_rate = loan_arp / 100.0
  monthly_interest_rate = annual_interest_rate / 12.0
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration)))
end

loan_amount = user_input("Please enter the desired loan amount. Use a full stop '.' to represent the decimal point and format the number, for example, '2.500' or '4.560' for hundreds and tens: ")
loan_arp = user_input("Please enter the Annual Percentage Rate. Use a full stop '.' to represent the decimal point and format the number, for example, '6.5' or '10.54: ")
loan_duration = user_input("Please enter the loan duration in months. Only integer numbers allowed: ", convert_to_integer: true)

puts "Loan Amount: #{loan_amount}"
puts "Annual Percentage Rate: #{loan_arp}"
puts "Loan Duration: #{loan_duration} months"
puts "Your monthly payment for the loan you required is: #{calculate(loan_amount, loan_arp, loan_duration)}"
