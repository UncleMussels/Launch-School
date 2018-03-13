# Using the code from hello_sophie2.rb, add a getter method named #name and
# invoke it in place of @name in #greet.

class Cat
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greet
    puts "Hello, #{name}!"
  end
end

kitty = Cat.new("Owen")
kitty.greet

