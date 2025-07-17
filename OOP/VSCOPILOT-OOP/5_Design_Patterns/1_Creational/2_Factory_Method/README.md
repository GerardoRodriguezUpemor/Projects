# Factory Method Pattern

The Factory Method pattern provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.

### Example:
```python
from abc import ABC, abstractmethod

class Product(ABC):
    @abstractmethod
    def operation(self):
        pass

class ConcreteProductA(Product):
    def operation(self):
        return "Result of the ConcreteProductA"

class ConcreteProductB(Product):
    def operation(self):
        return "Result of the ConcreteProductB"

class Creator(ABC):
    @abstractmethod
    def factory_method(self):
        pass

    def some_operation(self):
        product = self.factory_method()
        return f"Creator: The same creator's code has just worked with {product.operation()}"

class ConcreteCreatorA(Creator):
    def factory_method(self):
        return ConcreteProductA()

class ConcreteCreatorB(Creator):
    def factory_method(self):
        return ConcreteProductB()

creator_a = ConcreteCreatorA()
print(creator_a.some_operation())

creator_b = ConcreteCreatorB()
print(creator_b.some_operation())
```
