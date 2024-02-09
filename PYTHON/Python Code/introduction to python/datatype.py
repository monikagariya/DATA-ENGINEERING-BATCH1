#int
x = 5
y = -10
print(type(x))
print(type(y))

#float
pi = 3.14
radius = 2.5
print((type(pi)))

#string
name = 'John Doe'
message = "Hello, World!"
print(type(name))
print(message)

#bool
is_python_fun = True
is_raining = False
print(type(is_python_fun))

#list
numbers = [1, 2, 3, 4, 5]
fruits = ['apple', 'banana', 'cherry']
mixed_list = [1, 'apple', True]
print(type(numbers))

#tuples
coordinates = (10, 20)
colors = ('red', 'green', 'blue')
print(type(coordinates))

#dictionary
person = {'name': 'John', 'age': 30, 'city': 'New York'}
grades = {'math': 90, 'science': 85, 'history': 88}
print(type(person))

#set
unique_numbers = {1, 2, 3, 4, 5}
unique_letters = {'a', 'b', 'c', 'd'}
print(type(unique_numbers))

people = {"Jay", "Idrish", "Archi"}

print("People:", end=" ")
print(people)

people.add("Daxit")

for i in range(1, 6):
    people.add(i)

print("\nSet after adding element:", end=" ")
print(people)



