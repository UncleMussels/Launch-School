# What does the following print out? Can you explain these results?

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# BOB
# BOB

# The upcase! method mutates the caller, therefore mutating all variables also pointing at the caller's value.