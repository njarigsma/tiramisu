#helper methods
def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times {sleep 0.5; print "."}
  puts "\n"
end

#defining ingredients
NUM_eggs = 4
NUM_cream = 125
NUM_mascarpone = 500

ingredients = [
  {name:"cream", quantity: NUM_cream},
  {name:"sugar", quantity: 75},
  {name:"eggs", quantity: NUM_eggs},
  {name:"mascarpone", quantity: NUM_eggs},
  {name:"amaretto", quantity: 5},
  {name:"espresso", quantity: 200},
  {name:"ladyfingers", quantity: 175},
  {name:"cacao", quantity: 1},
]
#printing ingredients
puts "*       Let's make tiramisu!      *"
print_divider
puts "You will need the following ingredients"
ingredients.each do |ingredient|
puts "#{ingredient[:quantity]} #{ingredient[:name]}"
end

#ask user if they have all the ingredients
loop do
  puts "\n"
  print_divider
  puts "Got all the ingredients you need? (Y/N)"
  answer = gets.chomp.upcase
  if answer == "Y"
    puts "Great! Let's start!"
    break
  elsif answer == "N"
    puts "Okay, you need to do some shopping!"
    print_progress_bar
  else
    puts "I didn't ask for that, thank you. Try again."
  end
end
