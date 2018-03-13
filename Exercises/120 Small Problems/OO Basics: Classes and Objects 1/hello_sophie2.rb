# Using the code from hello_sophie.rb, move the greeting from the
# #initialize method to an instance method named #greet that prints a greeting
# when invoked.

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

kitty = Cat.new("Owen")
kitty.greet
