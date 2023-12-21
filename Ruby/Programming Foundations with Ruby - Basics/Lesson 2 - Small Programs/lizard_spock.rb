VALID_INPUT = ["(r) for 'rock'", "(p) for 'paper'", "(sc) for 'scissors'", "(l) for 'lizard'", "(sp) for 'spock'"]

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to 'Rock, Paper, Scissors, Lizard, Spock' game!")

def display_results(user_input, computer_choice, user_wins, computer_wins)
  user_choice = VALID_INPUT.find { |input| input.start_with?("(#{user_input})") }
  computer_choice_description = VALID_INPUT.find { |input| input.start_with?("(#{computer_choice})") }

  case [user_input, computer_choice]
  when ['r', 'sc'], ['r', 'l'], ['p', 'r'], ['p', 'sp'], ['sc', 'p'], ['sc', 'l'], ['l', 'sp'], ['l', 'p'], ['sp', 'sc'], ['sp', 'r']
    prompt("You won! You chose #{user_choice} which beats #{computer_choice_description} that computer chose!")
    user_wins += 1
  when ['sc', 'r'], ['sc', 'sp'], ['r', 'p'], ['r', 'sp'], ['p', 'sc'], ['p', 'l'], ['l', 'r'], ['l', 'sc'], ['sp', 'p'], ['sp', 'l']
    prompt("Computer won... Computer chose #{computer_choice_description} which beats #{user_choice} that you chose...")
    computer_wins += 1
  else
    prompt("It's a tie! Computer chose #{computer_choice_description} that ties with your choice of #{user_choice}.")
  end

  prompt("The score is: User (#{user_wins}), Computer(#{computer_wins})...")

  [user_wins, computer_wins]
end

user_wins = 0
computer_wins = 0

loop do
  loop do
    valid_chars = VALID_INPUT.map { |input| input.scan(/\((\w+)\)/) }.flatten

    prompt("Please enter one of the following: #{VALID_INPUT.join(', ')}")
    user_input = gets.chomp

    if valid_chars.include?(user_input)
      computer_choice = valid_chars.sample
      user_wins, computer_wins = display_results(user_input, computer_choice, user_wins, computer_wins)

      if user_wins == 3 || computer_wins == 3
        prompt("#{user_wins == 3 ? 'User' : 'Computer'} is the winner!")
        exit
      end

      break
    else
      prompt("You didn't enter one of the valid characters!")
    end
  end
end
