# Open/Closed Principle (OCP)

Software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification.

### Example:
```python
# Bad: If we want to add a new shape, we have to modify the area function.
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

def area(shape):
    if isinstance(shape, Rectangle):
        return shape.width * shape.height

# Good: We can add new shapes without modifying the area function.
class Shape:
    def area(self):
        raise NotImplementedError

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return 3.14 * self.radius ** 2
```
