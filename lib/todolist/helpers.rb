module Helpers
  
  NL = "\n"
  COMMANDS = %{Commands: add, (del)ete, (d)isplay, (h)elp, save, (q)uit}
  HELP = %{To Do List Help page
  An explanation of the commands:

  (add)  Adds an item to the list

      Enter: add "item" [position_number]

      Examples: 
      * add "Eat chunky bacon" 1  # Adds the item to the first position in the list.
      * add "Take a shower"       # When the position number is omitted, the item is added to the bottom of the list.
      * add "Brewday List" title  # Changes the title of the list

  (del)ete  Deletes an item from the list

      Enter: del [position_number]

      Examples:
      * del 3  # Deletes the third item in the list
      * del    # Deletes the last item

  (save)  Saves the list to a file

      Enter: save

  (d)isplay  Displays the list

      Enter: d

  (q)uit  Quits the program

      Enter: q

  (h)elp  Displays the help page with a list of the commands

      Enter: h}

  def display(list)
    puts NL, list.output
  end

end