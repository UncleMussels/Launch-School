#Using the code from create_object.rb, add an #initialize method that prints
# :I'm a cat!"" when a new Cat object is initialized.

class Cat
  def initialize
    puts "I'm a cat!"
  end
end

kitty = Cat.new