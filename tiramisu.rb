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
NUM_EGGS = 4
NUM_CREAM = 125
NUM_MASCARPONE = 500

ingredients = [
  {name:"cream", quantity: NUM_CREAM},
  {name:"sugar", quantity: 75},
  {name:"eggs", quantity: NUM_EGGS},
  {name:"mascarpone", quantity: NUM_MASCARPONE},
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

#defining recipe steps
steps = [
  {description: "Klop de slagroom met 1/5 van de basterdsuiker in een ruime kom met een mixer bijna stijf. Maak de mixer schoon.", action: "generic_recipe_step"},
  {description: "Splits de eieren (de eiwitten worden niet gebruikt).", action: "separate_eggs"},
  {description: "Klop in een andere kom de eidooiers met de rest van de suiker in 5 min. tot een romig mengsel.", action: "generic_recipe_step"},
  {description: "Meng de mascarpone in delen door het eidooiermengsel.", action: "generic_recipe_step"},
  {description: "Spatel de slagroom er luchtig door.", action: "generic_recipe_step"},
  {description: "Roer in een ondiep, langwerpig schaaltje de likeur door de espresso. Doop er de helft van de lange vingers een voor een in en leg ze met de koffiekant naar boven als 1 laag in de schaal. Verdeel de helft van het mascarponemengsel erover. Maak zo nog een laag met de rest van de koffie, de lange vingers en de mascarpone.", action: "generic_recipe_step"},
  {description: "Laat de schaal afgedekt minimaal 2 uur in de koelkast opstijven. Neem kort voor het serveren uit de koelkast. ", action: "generic_recipe_step"},
  {description: "Bestrooi de tiramisu met behulp van een zeefje met de cacaopoeder.", action: "generic_recipe_step"},
]


#printing out the steps
print_divider
puts "See below the different steps to follow: "
steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end

#defining the step actions
def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def separate_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Separate egg #{counter}"
    print_progress_bar
  end
end

#ask user if they're ready for the next step
def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]}) (Y/N)"
  answer = gets.chomp
  answer.upcase == 'Y'
end

#Iterating through each of the steps
steps.each_with_index do |step, index|
  print_divider
  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "Ok, I will give you some extra time"
    print_progress_bar
  end
  send(step[:action])
  end

#Done with making tiramisu
print_divider
puts "Presto! You're all done"
