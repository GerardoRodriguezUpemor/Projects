# Interfaces

An interface is a description of the actions that an object can do. For example, when you flip a light switch, the light goes on, you don't care how, just that it does. In object-oriented programming, an interface is a description of all functions that an object must have to be an "X".

### Example:
```python
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

bulb = LightBulb()
bulb.turn_on()
bulb.turn_off()
```
