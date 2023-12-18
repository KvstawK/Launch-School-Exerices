# frozen_string_literal: true

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def get_input(prompt, convert_to_number: false)
  puts "=> #{prompt}"
  input = gets.chomp

  loop do
    if convert_to_number
      return input.to_f if input.match?(/\A[+-]?\d+(\.\d+)?\z/) 
    elsif input.is_a?(String)
      return input
    end

    puts(messages('invalid', 'en'))
    input = gets.chomp
  end
end

def calculate(number_one, number_two, operation)
  arithmetic_operations = case operation
  when 'add'
    puts number_one + number_two
  when 'subtract'
    puts number_one - number_two
  when 'multiply'
    puts number_one * number_two
  when 'divide'
    puts number_one.to_f / number_two
  else
    loop do
      puts(messages('operation_invalid', 'en'))
      operation = get_input(messages('operation', 'en'))
      break if %w[add subtract multiply divide].include?(operation.downcase)
    end
    calculate(number_one, number_two, operation)
  end
end

number_one = get_input(messages('number', 'en') , convert_to_number: true)
number_two = get_input(messages('second_number', 'en'), convert_to_number: true)
operation = get_input(messages('operation', 'en'))

calculate(number_one, number_two, operation)

