=begin
Question 10

Consider these two simple methods:

What would be the return value of the following method invocation?
=end

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# Answer: return value == 'no'