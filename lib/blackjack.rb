def welcome()
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  random_number = 0
  while random_number == 0 do 
    random_number = rand(11)
  end
  random_number
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user()
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  user_input = gets 
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round()
  num = deal_card()
  num += deal_card()
  display_card_total(num)
  num
end

def hit?(current_total)
  prompt_user()
  next_play = get_user_input()
  if next_play == 'h' || next_play == 's'
    if next_play == 'h'
      current_total += deal_card()
    elsif next_play == 's'
      current_total
    end
  else
    invalid_command()
    prompt_user()
    get_user_input()
  end
end
  
def invalid_command()
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  welcome()
  current_total = initial_round()
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
end_game(current_total)
end
    
