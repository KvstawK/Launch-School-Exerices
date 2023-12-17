def check_word(word)
  if /lab/ =~ word
    puts word
  else 
    puts "No match"
  end
end

check_word("laboratory")
check_word("experiment")
check_word("Pans Labyrinth")
check_word("elaborate")
check_word("polar bear")


def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.


"What is exception handling and what problem does it solve?"

# When we have an unexpected error we can use it so our program wont crush.


def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# We didn't add the & before the parameter of block, os it sees only one argument which is 'block'