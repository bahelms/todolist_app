#!/usr/bin/env ruby
require_relative '../lib/todolist'
require_relative '../lib/todolist/commands'
NL = "\n"

if ARGV.empty?
  #
else
  list = TodoList.new(ARGV[0])
  ARGV.clear
  puts NL, list.output, NL
end

loop do
  puts Commands::COMMANDS
  print "Enter: "
  command = gets.chomp

  regex = /(\w+)\s?(".+")?\s?(\d)?/i # captures ""
  md = regex.match command

  case md[1]
  when "add"
    list.add md[2], md[3]
    puts NL, list.output, NL
  when "del", "delete"
    list.delete md[3]
    puts NL, list.output, NL
  when "save"
    puts "Save"
  when "q", "quit"
    exit
  when "h", "help"
    puts Commands::HELP
  when "d", "display"
    puts NL, list.output, NL
  else
    puts "Invalid command", NL
  end
end