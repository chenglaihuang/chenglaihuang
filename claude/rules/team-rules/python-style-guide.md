---
description: Python Style Guide
globs: "**/*.py, **/*.ipynb"
paths:
  - "**/*.py"
  - "**/*.ipynb"
alwaysApply: false
---

# Python Style Guide

Apply this style guide only to new or modified code. Do not refactor or restyle existing code to match these rules unless explicitly asked.

Syntax Rules

- Use comprehensions over loops when constructing containers, unless it would duplicate work or involve recursion
- Unpack tuples completely when ≤3 items, or when all items are used (use \_ for unused items); use individual indexing for >3 items with some unused
- Use symbolic operators (&, |, -) over function names (.intersection(), .union(), .difference()) when available
- Use .items() when iterating dicts and need both key/value; iterate directly through dict (not .keys()) when only need keys
- Iterate through items directly, not indices; use enumerate() only when index is needed

For string formatting:

- In logging: use %s syntax (e.g., logging.warning("User %d error", user_id)) to avoid unnecessary overhead
- In regular code: use f-strings in Python 3.6+, otherwise .format()

Variable casing:

- Constants: SCREAMING_SNAKE_CASE
- Variables/functions: snake_case
- Classes/namedtuples/Enums: PascalCase
- Never use camelCase

Strategy Rules

- Raise exceptions when there's no logical path forward; use if/else for normal control flow (don't use try/except for control flow)
- Return tuples for multiple values, not dicts (exception: serializers/views returning JSON)
- Use namedtuples/dataclasses when returning >3 items
- Dict access: prefer my_dict[key] over my_dict.get(key) if key is always expected to be present, so unexpected absent keys fail loudly.
- Return explicitly from all branches (don't implicitly return None)
- Use early returns to avoid nested if-then chains and "arrow" code
- Name variables positively (is*valid, not is_not_valid) and predicates with is*/has\_ prefix
- Use built-in open() in Python 3 (not io.open or codecs.open)
- Never use mutable default args (e.g., def func(items=[]):) - use None and instantiate inside function. Remember that str/strings and bool/booleans aren't mutable.

Structure Rules

- Mark private with \_ prefix for variables/classes/functions not intended for external use
- Avoid global mutable variables; private global constants are fine with \_ prefix and comments
- Document side effects clearly and name functions appropriately (don't hide side effects in "getter" functions)
- Use direct field access for public fields; use @property decorator for read-only access to private fields; use @property.setter for validated write access (avoid Java-style get_x()/set_x())
- Avoid introspection/reflection (hasattr, getattr, setattr, dir, inspect) - they're slow, mask bugs, and harm static analysis
