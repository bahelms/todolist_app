#!/usr/bin/env ruby
require_relative '../lib/todolist'
require_relative '../lib/todolist/commands'
require_relative '../lib/todolist/helpers'
include Helpers

if ARGV.empty?
  list = TodoList.new
  print NL, "Enter title of list: "
  list.title = gets.chomp
  display list
else
  list = TodoList.new ARGV[0]
  ARGV.clear
  display list
end

loop do
  puts NL, Commands::COMMANDS
  print "Enter: "
  command = gets.chomp

  regex = /(\w+)\s?(".+")?\s?(\w*)/i # captures ""
  md = regex.match command

  case md[1]
  when "add"
    list.add md[2], md[3]
    display list
  when "del", "delete"
    list.delete md[3]
    display list
  when "save"
    list.save
    puts "The list has been saved to #{list.file}!"
  when "q", "quit"
    exit
  when "h", "help"
    puts Commands::HELP
  when "d", "display"
    display list
  else
    puts "Invalid command"
  end
end