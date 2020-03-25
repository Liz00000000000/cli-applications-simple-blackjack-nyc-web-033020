require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
  #binding.pry
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
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  #binding.pry
  #rand(1..11) + rand(1..11)
  sum = deal_card + deal_card
  p display_card_total(sum)
   p sum
end


def hit?(chomp)
  # code hit? here
  #binding.pry
 prompt_user
 what = get_user_input
 if what == 's'
 return chomp
 elsif what == 'h'
  return deal_card + chomp
   #binding.pry
 else
    puts "Please enter a valid command"
    puts "Type 'h' to hit or 's' to stay"
    what2 = get_user_input
    if what2 == 's'
    return chomp
  elsif what2 == 'h'
     return deal_card + chomp
   end
   end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  #binding.pry
  welcome
  #initial_round
  total = hit?(initial_round)
  card_total = display_card_total(total)
  if card_total >= 21
  end_game
else
  new_total = hit?(card_total)
    if new_total >= 21
    end_game
  end
end
end
