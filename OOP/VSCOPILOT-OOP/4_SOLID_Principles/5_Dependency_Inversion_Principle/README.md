# Dependency Inversion Principle (DIP)

High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.

### Example:
```python
# Bad: The LightBulb class depends on the Switch class.
class LightBulb:
    def turn_on(self):
        print("LightBulb: turned on...")

    def turn_off(self):
        print("LightBulb: turned off...")

class Switch:
    def __init__(self, bulb):
        self.bulb = bulb

    def operate(self):
        # code to operate the switch
        pass

# Good: Both classes depend on the Switchable abstraction.
from abc import ABC, abstractmethod

class Switchable(ABC):
    @abstractmethod
    def turn_on(self):
        pass

    @abstractmethod
    def turn_off(self):
        pass

class LightBulb(Switchable):
    def turn_on(self):
        print("LightBulb: turned on...")

    def turn_off(self):
        print("LightBulb: turned off...")

class Switch:
    def __init__(self, device):
        self.device = device

    def operate(self):
        # code to operate the switch
        pass
```
