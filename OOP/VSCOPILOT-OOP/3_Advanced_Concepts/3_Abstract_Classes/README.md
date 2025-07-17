# Abstract Classes

An abstract class is a class that cannot be instantiated. It is designed to be inherited by other classes. An abstract class can have abstract methods, which are methods that are declared but not implemented in the abstract class. Subclasses of an abstract class must implement all of its abstract methods.

### Example:
```python
from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def drive(self):
        pass

class Car(Vehicle):
    def drive(self):
        print("Driving a car")

# vehicle = Vehicle() # This would cause an error
car = Car()
car.drive() # Output: Driving a car
```
