---
description: Typescript Language Rules
globs: "**/*.ts, **/*.tsx"
paths:
  - "**/*.ts"
  - "**/*.tsx"
alwaysApply: false
---

# Typescript Language Rules

For typescript code, prefer arrow functions over the `function` keyword to avoid unintuitive `this` binding.

Exceptions where `function` is required or preferred:

- Generator functions (`function*`), which have no arrow equivalent
- Callbacks/methods that intentionally rely on dynamic `this` binding
- Cases where `this` must refer to the calling context rather than the lexical scope
