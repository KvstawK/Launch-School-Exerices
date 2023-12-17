puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

# Or:

puts "How old are you?"
input = gets.chomp.to_i

if input <= 0
  puts "Enter a positive number. Please start again!"
else
  puts "In 10 years you will be #{input+10} years old"
  puts "In 20 years you will be #{input+20} years old"
  puts "In 30 years you will be #{input+30} years old"
  puts "In 40 years you will be #{input+40} years old"
end