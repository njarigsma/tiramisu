#helper methods
def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times {sleep 0.5; print "."}
  puts "\n"
end

NUM_eggs = 4
NUM_cream = 125
NUM_mascarpone = 500

ingredients [
  {name:"cream", quantity: NUM_cream},
  {name:"sugar", quantity: 75},
  {name:"eggs", quantity: NUM_eggs},
  {name:"mascarpone", quantity: NUM_eggs},
  {name:"amaretto", quantity: 5},
  {name:"espresso", quantity: 200},
  {name:"ladyfingers", quantity: 175},
  {name:"cacao", quantity: 1},
]
