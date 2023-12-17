x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y
end
puts x

"x print the number 3 in all cases because it is in the scope from the first time we declared. If we erase the first program the x in the second gives an error because it wasn't available when it was created inside the block."