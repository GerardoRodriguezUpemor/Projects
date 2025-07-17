# Associations

Association is a relationship between two separate classes that establishes a connection between them.

### Example:
```python
class Teacher:
    def __init__(self, name):
        self.name = name

class Student:
    def __init__(self, name, teacher):
        self.name = name
        self.teacher = teacher

teacher = Teacher("Mr. Smith")
student = Student("John", teacher)

print(student.teacher.name) # Output: Mr. Smith
```
