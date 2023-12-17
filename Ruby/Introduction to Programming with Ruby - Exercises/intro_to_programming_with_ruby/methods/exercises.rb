def greeting(name)
  "Hi " + name
end

puts greeting("John")


=begin
1. x = 2    # => 2

2. puts x = 2    # => nil

3. p name = "Joe"    # => "Joe"

4. four = "four"    # => "four"

5. print something = "nothing"    # => nil
=end


def multiply(x, y)
  x * y
end

puts multiply(2, 4)


def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

"It wont print anything"


def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yippeee")

"It returns 'Yippeee!!!!'"

"if we add a p in 'scream(\"Yippeee\")' it returns nil"


=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# We have to add another one argument in the method of 'calculate_product'

