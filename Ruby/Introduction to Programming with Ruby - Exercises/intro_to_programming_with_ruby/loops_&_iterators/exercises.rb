x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# 1, 2, 3, 4, 5


x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end


def countdown(num)
  if num == 0
    puts num
  elsif num < 0
    puts num
    countdown(num + 1)
  elsif num > 0
    puts num
    countdown(num - 1)
  end
end

countdown(9)
countdown(0)
countdown(-5)