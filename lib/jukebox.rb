require 'pry'
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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs) 
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end  

def helpful_hash(songs)
  song_index_array = []
  songs.each_with_index do |song, i| 
    song_index_array << "#{i+1}"
    song_index_array << "#{song}"
  end
  song_index_array   
end  

def play(songs)
  puts "Please enter a song name or number:"
   song_input = gets.chomp    
    if songs.include?(song_input) 
    puts "Playing #{song_input}"
    elsif helpful_hash(songs).include?(song_input)
    puts "Playing #{songs[song_input.to_i - 1]}"
    else 
    puts "Invalid input, please try again"
    end
end  

def exit_jukebox 
  puts "Goodbye"
end  

def run(jukebox) 
  help
  puts "Please enter a command:"
  loop do
    gets.strip
    if gets.strip == "list"
    list
    elsif gets.strip == "play"
    play
    elsif gets.strip == "exit"
    exit_jukebox
    break
    end
  end
end   