This is a command line To-Do list app written in Ruby.
It allows you to create a list of items from a CLI, and store it in a file for 
later access.

Start the program with: 

    todolist [filename]

The filename is optional, and leaving it off will start a new list from scratch.

Current commands
----
* add
* del
* save
* display

----
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

	h

Things to add
----
* Create new list - ask for save
* Ask for save on quit
* Redorder items in a list
* Auto add .txt to file names
* Multiple lines for one item
* Break list into different groups