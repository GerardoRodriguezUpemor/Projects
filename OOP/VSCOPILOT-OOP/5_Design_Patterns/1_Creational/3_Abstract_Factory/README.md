# Abstract Factory Pattern

The Abstract Factory pattern lets you produce families of related objects without specifying their concrete classes.

### Example:
```python
from abc import ABC, abstractmethod

class AbstractProductA(ABC):
    @abstractmethod
    def useful_function_a(self):
        pass

class ConcreteProductA1(AbstractProductA):
    def useful_function_a(self):
        return "The result of the product A1."

class ConcreteProductA2(AbstractProductA):
    def useful_function_a(self):
        return "The result of the product A2."

class AbstractProductB(ABC):
    @abstractmethod
    def useful_function_b(self):
        pass

class ConcreteProductB1(AbstractProductB):
    def useful_function_b(self):
        return "The result of the product B1."

class ConcreteProductB2(AbstractProductB):
    def useful_function_b(self):
        return "The result of the product B2."

class AbstractFactory(ABC):
    @abstractmethod
    def create_product_a(self):
        pass

    @abstractmethod
    def create_product_b(self):
        pass

class ConcreteFactory1(AbstractFactory):
    def create_product_a(self):
        return ConcreteProductA1()

    def create_product_b(self):
        return ConcreteProductB1()

class ConcreteFactory2(AbstractFactory):
    def create_product_a(self):
        return ConcreteProductA2()

    def create_product_b(self):
        return ConcreteProductB2()

def client_code(factory):
    product_a = factory.create_product_a()
    product_b = factory.create_product_b()
    print(product_a.useful_function_a())
    print(product_b.useful_function_b())

client_code(ConcreteFactory1())
client_code(ConcreteFactory2())
```
