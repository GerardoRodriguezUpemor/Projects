# Classes and Objects

## Class
A class is a blueprint for creating objects. It defines a set of attributes and methods that the created objects will have.

### Example:
```python
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        print("Woof!")
```

## Object
An object is an instance of a class. When a class is defined, no memory is allocated until an object of that class is created.

### Example:
```python
# Create a Dog object
my_dog = Dog("Buddy", 3)

# Access attributes
print(my_dog.name)  # Output: Buddy
print(my_dog.age)   # Output: 3

# Call methods
my_dog.bark()  # Output: Woof!
```
