def get_floors
  puts "Salut Ramses, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  user_number = gets.chomp.to_i
end

'def half_pyramid
  count = 1 
  user_number = get_floors
  puts "Voici la pyramide :"
  while count <= user_number
    spacing = user_number - count #generate space
    line = " " * spacing + "#" * count #define line & number of "#"
    puts line
    count += 1
  end
end'

'def full_pyramid
  count = 1 #change to 2 to avoid repetition of "#" count=1
  user_number = get_floors
  puts "Voici la pyramide :"
  while count <= user_number
    number_of_hash = 2 * count - 1
    spacing = user_number - count
    line = " " * spacing + "#" * number_of_hash
    puts line
    count += 1
  end
end'

def wtf_pyramid
  count = 1
  user_number = get_floors
  if user_number.even?
    puts "ERROR"
    return
  end
  puts "Voici la pyramide :"
  while count <= user_number
    number_of_hash = 2 * count - 1
    spacing = user_number - count
    line = " " * spacing + "#" * number_of_hash
    if count == user_number
      1.times do
        puts "#########"
        puts "--------"
        puts " phrase"
        puts "--------"
      end
    else
    puts line
    end
    count += 1
  end
  count = user_number 
  while count >= 1
    number_of_hash = 2 * count - 1
    spacing = user_number - count
    line = " " * spacing + "#" * number_of_hash
    puts line
    count -= 1
  end
end

wtf_pyramid