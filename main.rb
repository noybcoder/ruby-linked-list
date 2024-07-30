require_relative 'lib/linkedlist'

list = LinkedList.new # Create a new list

list.append('dog') # Append the value "dog" to the list
list.append('cat') # Append the value "cat" to the list
list.append('parrot') # Append the value "parrot" to the list
list.append('hamster') # Append the value "hamster" to the list
list.append('snake') # Append the value "snake" to the list
list.append('turtle') # Append the value "turtle" to the list
list.insert_at('unicorn', 2) # Insert the value "unicorn" to index 2 of the list
puts list.contains?('unicorn') # Check to see if the value "unicorn" exists
list.to_s # Print the list
