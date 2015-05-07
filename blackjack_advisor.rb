players_cards_array = []

card_value_hash = {"2"=>2,
                  "3"=>3,
                  "4"=>4,
                  "5"=>5,
                  "6"=>6,
                  "7"=>7,
                  "8"=>8,
                  "9"=>9,
                  "10"=>10,
                  "J"=>10,
                  "Q"=>10,
                  "K"=>10,
                  "A"=>11}

puts "What is your first card?"
user_input_1 = gets.chomp.upcase
first_card = user_input_1 [0]
players_cards_array << first_card

puts "What is your second card?"
user_input_2 = gets.chomp.upcase
second_card = user_input_2 [0]
players_cards_array << second_card

puts "What is the dealer's card?"
dealer_card = gets.chomp

player_card_sum = card_value_hash[first_card].to_i+card_value_hash[second_card].to_i
dealer_card_sum = card_value_hash[dealer_card].to_i

hard_call_hash = {2 => {9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                  3 => {9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                  4 => {9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                  5 => {8 => "double or hit", 9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                  6 => {8 => "double or hit", 9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                  7 => {10 => "double or hit", 11 => "double or hit"},
                  8 => {10 => "double or hit", 11 => "double or hit"},
                  9 => {10 => "double or hit", 11 => "double or hit"},
                  10 => {11 => "double or hit"},
                  11 => {11 => "double or hit"}}

def hard_hits(hard_call_hash, player_card_sum, dealer_card_sum)
  if hard_call_hash[dealer_card_sum][player_card_sum] == "double or hit"
    puts hard_call_hash[dealer_card_sum][player_card_sum]
  elsif player_card_sum < 8
    puts "hit"
  elsif player_card_sum < 17 && dealer_card_sum > 6
    puts "hit"
  elsif player_card_sum < 12 && dealer_card_sum < 4
    puts "hit"
  else
    puts "stay"
  end
end


soft_call_hash = {13 => {4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  14 => {4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  15 => {4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  16 => {4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  17 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  18 => {3 => "double or hit", 4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                  19 => {6 => "double or stay"},
                  20 => "0"}

def soft_hits(soft_call_hash, player_card_sum, dealer_card_sum)
  if soft_call_hash[player_card_sum][dealer_card_sum] == "double or hit"
    puts soft_call_hash[player_card_sum][dealer_card_sum]
  elsif soft_call_hash[player_card_sum][dealer_card_sum] == "double or stay"
    puts soft_call_hash[player_card_sum][dealer_card_sum]
  elsif player_card_sum == 18 && dealer_card_sum > 8
    puts "hit"
  elsif player_card_sum < 18
    puts "hit"
  else
    puts "stay"
  end
end

pair_call_hash = {2 => {8 => "hit"},
                  3 => {8 => "hit"},
                  4 => {8 => "hit"},
                  5 => "0",
                  6 => "0",
                  7 => {8 => "hit", 18 => "stay"},
                  8 => {4 => "hit", 6 => "hit", 8 => "hit", 12 => "hit"},
                  9 => {4 => "hit", 6 => "hit", 8 => "hit", 12 => "hit", 14 => "hit"},
                  10 => {4 => "hit", 6 => "hit", 8 => "hit", 10 => "hit", 12 => "hit", 14 => "hit", 18 => "stay"},
                  11 => {4 => "hit", 6 => "hit", 8 => "hit", 10 => "hit", 12 => "hit", 14 => "hit", 18 => "stay"}}

def pair_hits(pair_call_hash, player_card_sum, dealer_card_sum)
  if pair_call_hash[dealer_card_sum][player_card_sum] == "hit"
    puts pair_call_hash[dealer_card_sum][player_card_sum]
  elsif
    pair_call_hash[dealer_card_sum][player_card_sum] == "stay"
    puts pair_call_hash[dealer_card_sum][player_card_sum]
  elsif player_card_sum == 20
    puts "stay"
  else
    puts "split"
  end
end

if player_card_sum == 21
  puts "Hooray, you win!!"
elsif first_card == second_card
  pair_hits(pair_call_hash, player_card_sum, dealer_card_sum)
elsif players_cards_array.include?("A") #looking for Aces in player cards
  soft_hits(soft_call_hash, player_card_sum, dealer_card_sum) #if Aces found, then run this method
else
  hard_hits(hard_call_hash, player_card_sum, dealer_card_sum) #no Aces, run this method
end
