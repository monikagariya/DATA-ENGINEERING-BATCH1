#dictionary:a collection of items that allows us to store data in key: value pairs
my_dict = {'a': 1, 'b': 2, 'c': 3}
print("Original dictionary:", my_dict)

# get(key[, default]): Returns the value for the specified key
value_a = my_dict.get('a')
print("Value for key 'a':", value_a)

# pop(key[, default]): Removes and returns the value for the specified key
removed_value_b = my_dict.pop('b')
print("Removed value for key 'b':", removed_value_b)
print("Updated dictionary after pop:", my_dict)

# keys(): Returns a view of all keys in the dictionary
print("Keys:", my_dict.keys())

# values(): Returns a view of all values in the dictionary
print("Values:", my_dict.values())

# items(): Returns a view of all key-value pairs in the dictionary
print("Items:", my_dict.items())

# update([other]): Updates the dictionary with key-value pairs from another dictionary or iterable
my_dict.update({'d': 4, 'e': 5})
print("Updated dictionary:", my_dict)

# clear(): Removes all items from the dictionary
my_dict.clear()
print("After clear:", my_dict)
