class MyClass:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def my_method(self):
        return self.x + self.y

obj = MyClass(6, 4)
result = obj.my_method()
print( result)

#example 2

class Dog:
    # class attribute
    attr1 = "mammal"

    # Instance attribute
    def __init__(self, name):
        self.name = name

Rodger = Dog("Rodger")
Tommy = Dog("Tommy")

print("Rodger is a {}".format(Rodger.__class__.attr1))
print("Tommy is also a {}".format(Tommy.__class__.attr1))

# Accessing instance attributes
print("My name is {}".format(Rodger.name))
print("My name is {}".format(Tommy.name))

