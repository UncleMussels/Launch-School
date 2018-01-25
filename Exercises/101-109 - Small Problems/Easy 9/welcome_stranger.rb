# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a
# greeting that uses the person's full name, and mentions the person's title.

def greetings(name_arr, job_hash)
  name = name_arr.join(' ')
  job = job_hash.values.join(' ')

  "Hello, #{name}! #{job}s are always welcome here."
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
