# Write a method that counts the number of occurrences of each element in a given array.
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(array)
  types = {}
  array.each do |element|
    if types[element] == nil
      types[element] = 1
    else
      types[element] += 1
    end
  end

  types.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)