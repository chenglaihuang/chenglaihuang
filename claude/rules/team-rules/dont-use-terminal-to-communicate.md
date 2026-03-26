---
description: Don't use terminal commands to communicate thoughts
alwaysApply: true
---

# Don't use terminal commands to communicate thoughts

NEVER use terminal commands (echo, cat, heredocs, printf, Python print statements, etc.) just to communicate thoughts, explanations, summaries, or any information to the user. Terminal commands are ONLY for:

- Actual system operations (git, file operations, builds, tests, etc.)
- Data gathering/analysis where the command itself does the work
- Running scripts that modify state or produce files
  If you want to communicate something to the user, write it directly in your response text. If you find yourself using cat/echo/print just to display text, STOP and write it as regular response text instead.
