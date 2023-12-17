# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

"<Firstname> <Lastname>"

# For example, if your name is John Doe, think about how you can put "John" and "Doe" together to get "John Doe".

# Solution:

puts "<Firstname>" + "<Lastname>"


# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

# Solution:

thousands = 1478 / 1000 
hundreds = 1478 % 1000 / 100
tens = 1478 % 1000 % 100 / 10
ones = 1478 % 1000 % 100 % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"


# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

1975
2004
2013
2001
1981

# Solution:

movies = {
  :Star_Wars_Episode_IV_A_New_Hope => 1977,
  :Star_Wars_Episode_V_The_Empire_Strikes_Back => 1980,
  :Star_Wars_Episode_VI_Return_of_the_Jedi => 1983
}

puts movies[:Star_Wars_Episode_IV_A_New_Hope]
puts movies[:Star_Wars_Episode_V_The_Empire_Strikes_Back]
puts movies[:Star_Wars_Episode_VI_Return_of_the_Jedi]


# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

# Solution:

movies_dates = [1977, 1980, 1983]

puts movies_dates


# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# Solution:

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Or:

def factorial(num)
  if num == 0
    1
  else
    num * factorial(num-1)
  end
end

array = [5, 6, 7, 8]
array.each do |num|
  puts factorial(num)
end


# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

# Solution:

puts 1.40 * 1.40
puts 8.32 * 8.32
puts 4909.34 * 4909.34

# Or:

def sqr(flt)
  flt * flt
end

array = [3.5, 6.9, 1.6]
array.each {|flt| puts sqr(flt)}


# 7. What does the following error message tell you?

# Solution:

"There is a ')' without opening and a '{' without closing"