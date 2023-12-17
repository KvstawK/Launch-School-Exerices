family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

brothers_sisters = family.select do |x, y|
  x == :sisters || x == :brothers
end

arr = brothers_sisters.values.flatten

p arr


number = {:num => 8}
string = {:str => 'hello'}

puts number.merge(string)

puts number
puts string

puts number.merge!(string)

puts number
puts string


people = {'Alex': 28, 'Joe': 89, 'Alice': 35}

people.each { |z, y| puts z }
people.each { |z, y| puts y }
people.each { |z, y| puts "Person's name is #{z} and age is #{y}" }


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.value?("painting")
  puts 'painting value exists'
else
  puts 'no value'
end


x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.


NoMethodError: undefined method `keys' for Array

# B. There is no method called keys for Array objects.