#list :e built-in methods in lists used to perform operations on Python lists/arrays
my_list = [1, 2, 3, 4, 5]
print("Original list:", my_list)
#append(x): Adds an item to the end of the list
my_list.append(6)
print("After append(6):", my_list)
#extend(iterable): Extends the list by appending elements from the iterable
my_list.extend([7, 8, 9])
print("After extend([7, 8, 9]):", my_list)
#insert(i, x): Inserts an item at a given position in the list
my_list.insert(0, 0)
print("After insert(0, 0):", my_list)
# remove(x): Removes the first occurrence of an item from the list
my_list.remove(3)
print("After remove(3):", my_list)
#pop([i]): Removes and returns the item at the given position in the list
popped_item = my_list.pop(2)
print("Popped item at index 2:", popped_item)
print("After pop(2):", my_list)
# index(x[, start[, end]]): Returns the index of the first occurrence of an item in the list
index_of_5 = my_list.index(5)
print("Index of 5:", index_of_5)
#count(x): Returns the number of occurrences of an item in the list
count_of_4 = my_list.count(4)
print("Count of 4:", count_of_4)
# sort(): Sorts the items of the list in place
my_list.sort()
print("After sort():", my_list)
# reverse(): Reverses the elements of the list in place
my_list.reverse()
print("After reverse():", my_list)

# clear(): Removes all items from the list
my_list.clear()
print("After clear():", my_list)
