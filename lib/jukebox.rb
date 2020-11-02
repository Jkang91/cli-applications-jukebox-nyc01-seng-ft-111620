def help 
  puts " I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip 
  if (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
<<<<<<< HEAD
=======
    play(songs)
>>>>>>> f77eb381d38ad3afb41a8bea1bf74ad071310f13
  end
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  input = gets.strip.downcase
  if input == "exit"
    exit_jukebox 
  elsif input == "help"
    help
    run(songs)
  elsif input == "play"
    play(songs)
  elsif input == "list"
    list(songs)
    run(songs)
  else 
    puts "Invalid command"
  end
end


