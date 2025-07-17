# Single Responsibility Principle (SRP)

A class should have only one reason to change.

### Example:
```python
# Bad: The User class has two responsibilities: user management and user persistence.
class User:
    def __init__(self, name):
        self.name = name

    def get_name(self):
        return self.name

    def save(self):
        # code to save user to a database
        pass

# Good: Separate classes for each responsibility.
class User:
    def __init__(self, name):
        self.name = name

    def get_name(self):
        return self.name

class UserRepository:
    def save(self, user):
        # code to save user to a database
        pass
```
