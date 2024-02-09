#wrapping data and the methods that work on data within one unit.
class Base:
    def __init__(self):
        self.a = "HexaforHexa"
        self.__c = "HexaforHexa"

class Derived(Base):
    def __init__(self):
        # Calling constructor of
        # Base class
        Base.__init__(self)
        print("Calling private member of base class: ")
        print(self.__c)

obj1 = Base()
print(obj1.a)


