This is a To Do List app exercise I came up with to practice Ruby.

You can run the program from the command line:
$ todolist file.txt   

You'll have to add it to your machine's executable path.
The file paths for requiring the external files classes.rb and commands.rb 
depend on this program being in ~/ToDo. You'll have to change the require statements
if you want to put it somewhere else.
I'm not sure how to make it variable yet.

Command Line Interface
----
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

Things to add
----
* Create new list - ask for save
* Ask for save on quit
* Redorder items in a list
* Auto add .txt to file names
* Multiple lines for one item
* Break list into different groups