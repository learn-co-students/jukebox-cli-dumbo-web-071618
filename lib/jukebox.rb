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
  help_str = 
  "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

  puts help_str
end

def play(songs) 
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  
  if (1..songs.length).to_a.include?(song_request.to_i)
    puts "Playing #{songs[song_request.to_i - 1]}"
  elsif songs.include?(song_request)
    puts "Playing #{song_request}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each.with_index(1) { |val, index| puts "#{index}. #{val}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true 
    puts "Please enter a command:"
    command = gets.chomp.downcase
    case command
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end

run(songs)