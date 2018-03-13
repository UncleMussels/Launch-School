# Using the code from reader.rb, add a setter method named #name. Then, rename
# kitty to 'Luna' and invoke #greet again.

class Cat
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def greet
    puts "Hello, #{name}!"
  end
end

kitty = Cat.new("Owen")
kitty.greet
kitty.name = "Luna"
kitty.greet

