x = 5
y = 10
if x < y:
    print("x is less than y")
else:
    print("x is greater than or equal to y")
for i in range(5):
    print(i)
def greet(name):
    print("Hello,", name)

# Function call
greet("Alice")
class MyClass:
    def __init__(self, value):
        self.value = value

    def display(self):
        print("Value:", self.value)
obj = MyClass(20)
obj.display()


is_active = True
is_finished = False
result = None


try:
    result = 10 / 0
except ZeroDivisionError:
    print("Error: Division by zero")


