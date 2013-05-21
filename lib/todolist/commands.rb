# Command line keywords to manipulate @list
module Commands
  COMMANDS = %{Commands: (add), (del)ete, (d)isplay, (h)elp, (s)ave, (q)uit}
  HELP = %{jimbonk's To Do List Help page
  An explanation of the commands:

  (add)  Adds an item to the list

      add "item" [position_number]

  * Example: add "Eat chunky bacon" 1  # Adds the item to the first position in 
                                     # the list.
  * Example: add "Take a shower"       # When the position number is omitted, the
                                     # item is added to the bottom of the list.

  (del)ete  Deletes an item from the list

      del [position_number]

  * Example: del 3  # Deletes the third item in the list
  * Example: del    # Deletes the last item

  (save)  Saves the list to a file

      save

  (d)isplay  Displays the list

      d

  (q)uit  Quits the program

      q

  (h)elp  Displays the help page with a list of the commands

      h}
end