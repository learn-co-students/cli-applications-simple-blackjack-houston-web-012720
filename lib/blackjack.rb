def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) +1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (current_total)
  # code hit? here
  reply = nil
  until (reply == "s" || reply == "h") do
    prompt_user
    reply = get_user_input
    if ! (reply == "s" || reply == "h") 
      invalid_command
    end
  end
  if reply == "h"
    current_total += deal_card
  end
  current_total

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# 
#
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
