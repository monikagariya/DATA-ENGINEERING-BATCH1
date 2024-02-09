
#greet is a function identifier.
#Dog is a class identifier.
#my_dog is an object identifier
age = 25
name = "John Doe"
is_student = True

# Function identifier
def greet(person_name):
    print("Hello,", person_name)


class Dog:
    def __init__(self, name):
        self.name = name

    def bark(self):
        print(self.name, "says Woof!")


my_dog = Dog("Buddy")
greet(name)


print("My dog's name is", my_dog.name)
my_dog.bark()
