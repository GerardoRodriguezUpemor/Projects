# Strategy Pattern

The Strategy pattern lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

### Example:
```python
from __future__ import annotations
from abc import ABC, abstractmethod
from typing import List

class Context:
    _strategy: Strategy

    def __init__(self, strategy: Strategy) -> None:
        self._strategy = strategy

    def strategy(self, strategy: Strategy) -> None:
        self._strategy = strategy

    def do_some_business_logic(self) -> None:
        result = self._strategy.do_algorithm(["a", "b", "c", "d", "e"])
        print(",".join(result))

class Strategy(ABC):
    @abstractmethod
    def do_algorithm(self, data: List) -> List:
        pass

class ConcreteStrategyA(Strategy):
    def do_algorithm(self, data: List) -> List:
        return sorted(data)

class ConcreteStrategyB(Strategy):
    def do_algorithm(self, data: List) -> List:
        return reversed(sorted(data))

context = Context(ConcreteStrategyA())
context.do_some_business_logic()
context.strategy = ConcreteStrategyB()
context.do_some_business_logic()
```
