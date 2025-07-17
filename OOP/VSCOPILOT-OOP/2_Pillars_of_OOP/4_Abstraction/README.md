# Abstraction

Abstraction is the concept of hiding the complex reality while exposing only the necessary parts. It's like a coffee machine, you only need to know how to use it, not how it works internally.

### Example:
```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

rect = Rectangle(10, 5)
print(rect.area()) # Output: 50
```
