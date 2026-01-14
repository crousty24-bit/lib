def ask_first_name
  puts "What's your name ?"
  first_name = gets.chomp
  return first_name #explicit return : stop execution and return specific value
end

def say_hello
  first_name = ask_first_name #call to function to get user's name
  puts "Hello, #{first_name} !"
end

say_hello #function call