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
first_card = gets.chomp
players_cards_array << first_card
puts "What is your second card?"
second_card = gets.chomp
players_cards_array << second_card
puts "What is the dealer's card?"
dealer_card = gets.chomp

player_card_sum = card_value_hash[first_card].to_i+card_value_hash[second_card].to_i

def hard_hits(player_card_sum)
  if player_card_sum < 11
    puts "hit"
  elsif player_card_sum < 17 && card_value_hash[dealer_card] > 6
    puts "hit"
  elsif player_card_sum < 12 && card_value_hash[dealer_card] < 4
    puts "hit"
  else
    puts "stay"
  end
end

def soft_hits(player_card_sum)
  if player_card_sum = 9 || 10 && card_value_hash[dealer_card] =18
    puts "hit"
  elsif player_card_sum < 18
    puts "hit"
  else
    puts "stay"
  end
end

if players_cards_array.include?("A")
  soft_hits(player_card_sum)
else
  hard_hits(player_card_sum)
end

# puts "Your cards equals #{player_cards_sum}"
# def hard_finder
#
# end
#
# def soft_finder
# end
#
# if first_card || second_card = "A"
#   puts hard_finder
# else
#   puts easy_finder
# end
#
# puts "What is the dealer's card?"
# dealer_card = gets.chomp
#
#
# def hard_finder
#
# players_cards_hash = {}
