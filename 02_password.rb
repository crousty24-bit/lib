def signup
  puts "| ---SIGNUP--- |"
  puts "-------------------------"
  puts "Please set a new password"
  user_password = gets.chomp
  puts "------------------------------------------"
  puts "Do you want to keep this password ? Yes/No"
  user_answer = gets.chomp.downcase
  while user_answer != "yes"
    puts "---------------------------"
    puts "Please enter a new password"
    user_password = gets.chomp
    puts "Do you want to keep this password ? Yes/No"
    user_answer = gets.chomp.downcase
  end
  puts "----------------------"
  puts "-- Password defined --"
  #puts "#{user_password}"
  return user_password
end

#signup

def login(user_password)
  puts "               "
  puts "| ---LOGIN--- |"
  puts "--------------------------"
  puts "Please enter your password"
  attempts = 0
  password_entry = gets.chomp
  attempts +=1
  while password_entry != user_password && attempts < 3
    puts "---------------------------"
    puts "Wrong password !"
    puts "Please enter your password"
    password_entry = gets.chomp
    attempts +=1
    if attempts >= 3
      puts "Too many attempts, returning to signup"
      return
    end
  end
  puts "----------------------"
  puts "-- Password correct --"
  puts "                      "
  puts "   -- Redirecting --  "
  return password_entry
end

#login

def welcome_screen
  puts "               "
  puts "| ---Welcome in Area 47--- |"
  puts "----------------------------"
  puts "Loading ..."
  puts "Here are some secret messages: "
  puts "                               "
  puts "- Secret WhatsApp #1"
  puts "From @William to @Chloé :"
  puts "OMG Morgan is an undercover FBI agent, dont tell anyone.."
  puts "                    "
  puts "- Secret WhatsApp #2"
  puts "From @Morgan to @Remy :"
  puts "Dude I think Chloé hacked several THP students. Plz contact me assap"
  puts "                    "
end

def perform
  my_password = signup
  result = login(my_password)
  if result
    welcome_screen
  else
    puts "-- Restarting signup --"
    puts "                       "
    perform
  end
end

perform