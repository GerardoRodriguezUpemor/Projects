# Encapsulation

Encapsulation is the bundling of data (attributes) and methods that operate on the data into a single unit or class. It restricts direct access to some of an object's components, which is a means of preventing accidental interference and misuse of the methods.

### Example:
```python
class Car:
    def __init__(self, make, model):
        self.__make = make  # private attribute
        self.__model = model # private attribute

    def get_make(self):
        return self.__make

    def get_model(self):
        return self.__model

my_car = Car("Toyota", "Corolla")
# print(my_car.__make) # This would cause an error
print(my_car.get_make()) # Output: Toyota
```
