# Singleton Pattern

The Singleton pattern ensures that a class has only one instance, while providing a global access point to this instance.

### Example:
```python
class Singleton:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(Singleton, cls).__new__(cls)
        return cls._instance

s1 = Singleton()
s2 = Singleton()

print(s1 is s2) # Output: True
```
