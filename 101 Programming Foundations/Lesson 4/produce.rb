# iterate over and select info from a hash

def select_fruit(produce)
  counter = 0
  new_hash = {}
  produce_types = produce.keys

  loop do 
    break if counter == produce_types.size

    current_produce = produce_types[counter]
    if produce[current_produce] == "Fruit"
      new_hash[current_produce] = produce[current_produce]
    end

    counter += 1
  end

  new_hash
end




produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}