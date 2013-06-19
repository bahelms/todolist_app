This is a command line To-Do list app written in Ruby.
It allows you to create a list of items from a CLI, and store it in a file for 
later access.

Start the program with: 

    $ todolist [filename]

The filename is optional, and leaving it off will start a new list from scratch.

Current commands
----
* add 
* delete 
* save -- not implemented
* display
* help
* quit

----
(add) -- Adds an item to the list

    Enter: add "item" [position_number]

* Examples

    * add "Eat chunky bacon" 1    # Adds the item to the first position in the list.
    * add "Take a shower"         # When the position number is omitted, the item is added to the bottom of the list.
    * add "Brewday List" title    # Changes the title of the list

(del)ete  -- Deletes an item from the list

    Enter: del [position_number]

* Examples

    * del 3    # Deletes the third item in the list
    * del      # Deletes the last item

(save) -- Saves the list to a file

    Enter: save

(d)isplay -- Displays the list

	Enter: d

(q)uit -- Quits the program

	Enter: q

(h)elp -- Displays the help page with a list of the commands

	Enter: h

Things to add
----
* Save lists to CSV so one file can hold multiple lists
* Redorder items in a list
* Auto add .txt to file names
* Multiple lines for one item
* Break list into different groups

Things To Do
----
* Finish bin file
* Test bin file
* Wrap app into a gem