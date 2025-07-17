# Observer Pattern

The Observer pattern lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they're observing.

### Example:
```python
from __future__ import annotations
from abc import ABC, abstractmethod
from typing import List

class Subject(ABC):
    @abstractmethod
    def attach(self, observer: Observer) -> None:
        pass

    @abstractmethod
    def detach(self, observer: Observer) -> None:
        pass

    @abstractmethod
    def notify(self) -> None:
        pass

class ConcreteSubject(Subject):
    _state: int = None
    _observers: List[Observer] = []

    def attach(self, observer: Observer) -> None:
        self._observers.append(observer)

    def detach(self, observer: Observer) -> None:
        self._observers.remove(observer)

    def notify(self) -> None:
        for observer in self._observers:
            observer.update(self)

    def some_business_logic(self) -> None:
        self._state = 1
        self.notify()

class Observer(ABC):
    @abstractmethod
    def update(self, subject: Subject) -> None:
        pass

class ConcreteObserverA(Observer):
    def update(self, subject: Subject) -> None:
        if subject._state < 3:
            print("ConcreteObserverA: Reacted to the event")

class ConcreteObserverB(Observer):
    def update(self, subject: Subject) -> None:
        if subject._state == 0 or subject._state >= 2:
            print("ConcreteObserverB: Reacted to the event")

subject = ConcreteSubject()
observer_a = ConcreteObserverA()
subject.attach(observer_a)
observer_b = ConcreteObserverB()
subject.attach(observer_b)
subject.some_business_logic()
```
