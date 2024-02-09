#set :a data type in python used to store several items in a single variable.
my_set = {1, 2, 3, 4, 5}

# Set methods
print("Original set:", my_set)

# add(element): Adds an element to the set
my_set.add(6)
print("After add(6):", my_set)

# remove(element): Removes the specified element from the set
my_set.remove(3)
print("After remove(3):", my_set)

# discard(element): Removes the specified element from the set if it is present
my_set.discard(2)
print("After discard(2):", my_set)

# pop(): Removes and returns an arbitrary element from the set
popped_item = my_set.pop()
print("Popped item:", popped_item)
print("After pop:", my_set)

# clear(): Removes all elements from the set
my_set.clear()
print("After clear:", my_set)

# Creating two sets for demonstration
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# union(other_set): Returns a new set containing all unique elements from both
