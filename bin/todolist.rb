#!/usr/bin/env ruby
require_relative '../lib/todolist'
require_relative '../lib/todolist/commands'

if ARGV.empty?
  #
else
  list = TodoList.new(ARGV[0]) unless ARGV.empty?
  ARGV.clear
  puts list.output, "\n"

  loop do
    puts Commands::COMMANDS
    print "Enter: "
    command = gets.chomp

    case command
    when /q|quit/
      exit
    when /h|help/
      puts Commands::HELP
    end
  end
end
