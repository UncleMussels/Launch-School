# In the array below, find the index of the first name that starts with "Be":

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name[0..1] == "Be"}


