puts "What is your first card?"
first_card = gets.chomp
puts "What is your second card?"
second_card = gets.chomp
puts "What is the dealer's card?"
dealer_card = gets.chomp

player_cards_sum = first_card.to_i + second_card.to_i
puts player_cards_sum



# cards_value = {2=>2
#          3=>3
#          4=>4
#          5=>5
#          6=>6
#          7=>7
#          8=>8
#          9=>9
#          10=>10
#          J=>10
#          Q=>10
#          K=>10
#          A=>11}
