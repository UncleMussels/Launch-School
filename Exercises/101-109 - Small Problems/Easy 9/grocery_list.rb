# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# LS Solution"
  # def buy_fruit(list)
  #   list.map { |fruit, quantity| [fruit] * quantity }.flatten
  # end

def buy_fruit(grocery_array)
  total_fruit = []
  grocery_array.each do |fruit|
    fruit[1].times do
      total_fruit << fruit[0]
    end
  end

  total_fruit
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

