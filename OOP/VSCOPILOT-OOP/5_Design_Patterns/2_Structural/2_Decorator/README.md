# Decorator Pattern

The Decorator pattern lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

### Example:
```python
class Component:
    def operation(self):
        return "Component"

class Decorator(Component):
    _component = None

    def __init__(self, component):
        self._component = component

    def operation(self):
        return self._component.operation()

class ConcreteDecoratorA(Decorator):
    def operation(self):
        return f"ConcreteDecoratorA({self._component.operation()})"

class ConcreteDecoratorB(Decorator):
    def operation(self):
        return f"ConcreteDecoratorB({self._component.operation()})"

simple = Component()
decorator1 = ConcreteDecoratorA(simple)
decorator2 = ConcreteDecoratorB(decorator1)
print(decorator2.operation())
```
