# Facade Pattern

The Facade pattern provides a simplified interface to a library, a framework, or any other complex set of classes.

### Example:
```python
class Subsystem1:
    def operation1(self):
        return "Subsystem1: Ready!"

    def operation_n(self):
        return "Subsystem1: Go!"

class Subsystem2:
    def operation1(self):
        return "Subsystem2: Get ready!"

    def operation_z(self):
        return "Subsystem2: Fire!"

class Facade:
    def __init__(self, subsystem1, subsystem2):
        self._subsystem1 = subsystem1 or Subsystem1()
        self._subsystem2 = subsystem2 or Subsystem2()

    def operation(self):
        results = []
        results.append("Facade initializes subsystems:")
        results.append(self._subsystem1.operation1())
        results.append(self._subsystem2.operation1())
        results.append("Facade orders subsystems to perform the action:")
        results.append(self._subsystem1.operation_n())
        results.append(self._subsystem2.operation_z())
        return "\n".join(results)

subsystem1 = Subsystem1()
subsystem2 = Subsystem2()
facade = Facade(subsystem1, subsystem2)
print(facade.operation())
```
