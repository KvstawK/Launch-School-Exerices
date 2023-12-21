VALID_INPUT = ["(r) for 'rock'", "(p) for 'paper'", "(sc) for 'scissors'", "(l) for 'lizard'", "(sp) for 'spock'"]

def prompt(message)
  puts "=> #{message}"
end

def calculate_winner(user_input, computer_choice)
  user_choice = VALID_INPUT.find { |input| input.start_with?("(#{user_input})") }
  computer_choise_description = VALID_INPUT.find { |input| input.start_with?("(#{computer_choice})") }

  case [user_input, computer_choice]
  when ['r', 'sc'], ['r', 'l'], ['p', 'r'], ['p', 'sp'], ['sc', 'p'], ['sc', 'l'], ['l', 'sp'], ['l', 'p'], ['sp', 'sc'], ['sp', 'r']
    prompt("You won! You chose #{user_choice} which beats #{computer_choise_description} that computer chose!")
  when ['sc', 'r'], ['sc', 'sp'], ['r', 'p'], ['r', 'sp'], ['p', 'sc'], ['p', 'l'], ['l', 'r'], ['l', 'sc'], ['sp', 'p'], ['sp', 'l']
    prompt("Computer won... Computer chose #{computer_choise_description} which beats #{user_choice} that you chose...")
  else
    prompt("It's a tie! Computer chose #{computer_choise_description} that tie with your choice of #{user_choice}.")
  end
end

loop do
  prompt("Welcome to 'Rock, Paper, Scissors, Lizard, Spock' game!")

  loop do
    valid_chars = VALID_INPUT.map { |input| input.scan(/\((\w+)\)/) }.flatten

    prompt("Please enter one of the following: #{VALID_INPUT.join(', ')}")
    user_input = gets.chomp

    if valid_chars.include?(user_input)
      computer_choice = valid_chars.sample
      calculate_winner(user_input, computer_choice)
      break
    else
      prompt("You didn't enter one of the valid characters!")
    end
  end
end

