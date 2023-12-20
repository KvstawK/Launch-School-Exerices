VALID_INPUT = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def get_user_choice
  loop do
    prompt("Please choose one of those: #{VALID_INPUT.join(', ')}")
    user_choice = gets.chomp.downcase

    return user_choice if VALID_INPUT.include?(user_choice)

    prompt("You didn't enter one of the valid choices!")
  end
end

def display_winner(user_choice, computer_choice)
  prompt("You chose #{user_choice}, computer chose #{computer_choice}")

  case [user_choice, computer_choice]
  when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
    prompt("You won!")
  when ['scissors', 'rock'], ['rock', 'paper'], ['paper', 'scissors']
    prompt("Computer won...")
  else
    prompt("It's a tie!")
  end
end

loop do
  user_choice = get_user_choice
  computer_choice = VALID_INPUT.sample
  display_winner(user_choice, computer_choice)

  prompt("Do you want to play again? Enter 'N' to exit or press 'enter' to continue.")
  user_replay = gets.chomp
  break if user_replay.downcase.include?('n')
end

prompt("Thank you for playing!")