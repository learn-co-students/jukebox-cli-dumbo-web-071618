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
  #this method should be the same as in jukebox.rb
puts "I accept the following commands: "
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{|x,y| puts"#{y+1}. #{x}"}
end

def play(songs)
puts("Please enter a song name or number:")
answer = gets.chomp
if songs.include?(answer) || (1..9).include?(answer.to_i)
  if songs.include?(answer)
    puts "Playing <#{answer}>"
  else (1..9).include?(answer.to_i)
    puts "Playing <#{songs[answer.to_i-1]}>"
  end
else
  puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts"Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  reply = gets.strip
  while reply != "exit"
    case reply
    when "help"
      help
      reply = gets.strip
    when "list"
      list(songs)
      reply = gets.strip
    when "play"
      play(songs)
      reply = gets.strip
    end
  end
  exit_jukebox
end