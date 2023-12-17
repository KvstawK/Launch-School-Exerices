arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |num| puts num }


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |num|
  if num > 5
    puts num
  end
end


new_arr = arr.select { |number| number % 2 != 0 }

p new_arr


arr.push(11)
arr.unshift(0)

p arr


arr.pop
arr << 3

p arr


arr.uniq!

p arr


# Hashes have keys and values, arrays have only values


# hash1 = {:key1 => value1}
# hash2 = {key2: value2}


h = {a:1, b:2, c:3, d:4}

p h[:b]

h[:e] = 5
p h

h.delete_if do |x, y| 
  y < 3.5
end

p h


# hash_array_values = {k1: [v1, v2]}
# array_of_hashes = [{k2: v3}, {k2: v4}]


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"


arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |str| str.start_with?("s") }
arr.delete_if { |str| str.start_with?("s", "w") }

p arr


a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |pairs| pairs.split }
a = a.flatten

p a


hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# These hashes are not the same!


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts
