# Inheritance

Inheritance is a mechanism in which one class acquires the property of another class. For example, a child inherits the traits of his/her parents. With inheritance, we can reuse, extend or modify the attributes and behaviors which are defined in other classes.

### Example:
```python
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        raise NotImplementedError("Subclass must implement abstract method")

class Dog(Animal):
    def speak(self):
        return "Woof!"

class Cat(Animal):
    def speak(self):
        return "Meow!"

dog = Dog("Buddy")
print(dog.speak()) # Output: Woof!

cat = Cat("Whiskers")
print(cat.speak()) # Output: Meow!
```
