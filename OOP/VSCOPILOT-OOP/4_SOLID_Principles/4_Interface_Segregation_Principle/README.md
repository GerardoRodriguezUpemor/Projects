# Interface Segregation Principle (ISP)

No client should be forced to depend on methods it does not use.

### Example:
```python
# Bad: The Worker class is forced to implement the eat method, even though robots don't eat.
from abc import ABC, abstractmethod

class Workable(ABC):
    @abstractmethod
    def work(self):
        pass

class Eatable(ABC):
    @abstractmethod
    def eat(self):
        pass

class Worker(Workable, Eatable):
    def work(self):
        print("Working...")

    def eat(self):
        print("Eating...")

class Robot(Workable):
    def work(self):
        print("Robot working...")

# Good: The interfaces are segregated.
class Workable(ABC):
    @abstractmethod
    def work(self):
        pass

class Eatable(ABC):
    @abstractmethod
    def eat(self):
        pass

class HumanWorker(Workable, Eatable):
    def work(self):
        print("Human working...")

    def eat(self):
        print("Human eating...")

class RobotWorker(Workable):
    def work(self):
        print("Robot working...")
```
