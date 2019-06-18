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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (argument)
  argument.each.with_index(1) do |value, index|
  puts "#{index}. #{value}"
  end
end

def play (argument)
  puts "Please enter a song name or number:"
  play_input = gets.chomp

  argument.each.with_index(1) do |value, index|
    if play_input == index.to_s
      puts "Playing #{value}"
    elsif play_input == value
      puts "Playing #{value}"
    end
  end
  puts "Invalid input, please try again."
end

def exit_jukebox
  puts "Goodbye"
end

def run (argument)
  help
run_input = " "

  while (run_input != "exit")
  puts "Please enter a command:"
  run_input = gets.chomp

    case run_input
    when "list"
      list
    when "play"
      play
    when "help"
      help
    end
    if run_input == "exit"
      exit
end
end
end
