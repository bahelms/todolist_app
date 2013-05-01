# Command line keywords to manipulate @list
module Commands
  COMMANDS = %{Commands: (add), (del)ete, (re)order, (d)isplay, (h)elp, (s)ave, (q)uit}
  HELP = %{jimbonk's To Do List Help page
  An explanation of the commands:

  (add)
    syntax: add "item" position      

    example: add "Eat chunky bacon" 1  
        #This line adds the item to the first position in 
        #the list because chunky bacon is a high priority

    example: add "Take a shower" 
        #When the position number is ignored, the item is added 
        #to the bottom of the list. I agree.

  (del)ete
    syntax: del position

    example: del 3
        #Deletes the third item in the list

    example: del
        #Deletes the last item

  (re)order  #NOT IMPLEMENTED 
    syntax: re old_position new_position

    example: re 3 1
        #Moves whatever is in 3rd position to 1st
        #Everything else moves down one position

  (d)isplay
    syntax: d   #Displays the list again, for your pleasure

  (s)ave
    syntax: s   #Saves the list to the external file already given

  (q)uit
    syntax: q   #Closes this POS todo app

  (h)elp        #I think you know what this means}
end