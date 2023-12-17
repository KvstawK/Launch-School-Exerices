arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "The number is included in the arr array"
else
  puts "The number is not in the arr array"
end


arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

# It returns 1, arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# It returns [1, 2, 3], arr = [["b"], ["a", [1, 2, 3]]]


arr = [["test", "hello", "world"],["example", "mem"]]

# arr.last.first


arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) # 3

2. arr.index[5] # error

3. arr[5] # 8


string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil


names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# We ned to write it like this: names[3] = 'Jody'


arr = [3, 6 ,8 ,14, 20]
arr.each_with_index do | num, index |
  puts "#{index}, #{num}"
end


x = [5, 7, 3, 9]
new_x = []

x.each do |num|
  new_x << num + 2
end

p x
p new_x
