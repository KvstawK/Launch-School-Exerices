(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '847') # true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true


def all_caps(x)
  if x.length > 10
    x.upcase
  else
    x
  end
end

puts all_caps("Nice to meet you")
puts all_caps("Hello")


puts "Write a number from 0 to 100: "
num = gets.chomp.to_i

if num < 0
  puts "No negative number allowed!"
elsif num >= 0 && num <= 50
  puts "The number you entered is less or equal to 50"
elsif num > 50 && num <=100
  puts "The number you entered is more than 50 and less or equal to 100"
else 
  puts "The number you entered is more than 100"
end


# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")   # false

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end   

# Did you get it right?

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# Alright now!


def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

=begin 

we should add an end so it will be:

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

=end


(32 * 4) >= "129" # error
847 == '847' # false
'847' < '846' # false
'847' > '846' # true
'847' > '8478' # false
'847' < '8478' # true