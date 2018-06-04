songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: /n help : displays this help message /n list : displays a list of songs you can play /n play : lets you choose a song to play /n exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
end  

def play(songs)
  matched_song = false
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each do |song|
    if user_response == song
      matched_song = true
      puts "Playing #{song}"
    end  
  end  
  song_number = user_response.to_i
  if song_number > 0 && songs[user_response.to_i - 1]
    matched_song = true
    puts "Playing #{songs[user_response.to_i - 1]}"
  end  
  if (!matched_song) 
    puts "Invalid input, please try again"
  end  
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while (user_response != "exit")
    user_response = gets.chomp
    if (user_response == 'list')
      list(songs)
    end
    if (user_response == "play")
      play(songs)
    end
    if (user_response == "help")
      help
    end    
  end
  exit_jukebox
end