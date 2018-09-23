def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
 rand(1..11)
end


def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  gets.chomp
end


def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  card_total = a + b
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
prompt_user
input = get_user_input
  if input == "s"
  return current_total
    elsif input == "h"
     hit = deal_card
      return current_total + hit
  elsif input != "s" || input != "h"
    invalid_command
    
  end
end

def invalid_command
  "Please enter a valid command"
  
end



def runner
  
  welcome
  current_total = initial_round
 
  current_total = hit?(current_total)
  
  
  #prevents error message if an invalid command is entered
  if current_total == invalid_command
    puts invalid_command
    current_total = initial_round 
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  
  display_card_total(current_total)
  
  until current_total >= 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  
  end_game(current_total)
  
end

    
