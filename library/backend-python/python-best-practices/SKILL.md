---
name: python-best-practices
description: Use when writing, editing, or refactoring general Python code. Enforces PEP 8 style, strict type hinting, Ruff/Black formatting, and pytest testing conventions.
---

# Python Best Practices

## 1. Code Style & Formatting
- **PEP 8**: Adhere strictly to PEP 8 standards. Use `snake_case` for functions/variables, `PascalCase` for classes, and `UPPER_CASE` for constants.
- **Ruff & Black**: Format all Python code using Ruff or Black with a 100-character line limit.
- **Imports**: Group imports (Standard library, Third-party, Local modules) and sort them alphabetically.

## 2. Type Hinting
- **Mandatory Typing**: Always use type hints for all function arguments and return types.
- **Modern Typing**: Use built-in generics (e.g. `list[str]` instead of `List[str]` for Python 3.9+).
- **Mypy Compliance**: Ensure code passes strict static type analysis with mypy.

## 3. Asynchronous Python
- **Asyncio**: Use modern `async`/`await` patterns for I/O bound tasks.
- **Context Managers**: Always use `async with` for asynchronous resource cleanups (e.g. DB connections, files).

## 4. Testing
- **Pytest**: Write unit and integration tests using `pytest`.
- **Parametrization**: Prefer `@pytest.mark.parametrize` for data-driven testing.
- **Fixtures**: Use pytest fixtures with clean scopes (`function`, `module`) instead of setup/teardown methods.
