---
name: fastapi-best-practices
description: Core architecture and best practices for Python FastAPI backend code (Pydantic v2, async, dependency injection, formatting with ruff). Auto-loads on backend, fastapi, python.
---

# FastAPI Best Practices

## Project Setup & Conventions

- Use **FastAPI** as the web framework.
- Use **Pydantic v2** for all data validation and schemas.
- Use **uvicorn** as the ASGI server.
- Use **ruff** for linting and formatting. Always format code after writing it.
- Use **pytest** for testing.

## Code Structure

- Structure the app using modular routing (`APIRouter`).
- Keep business logic separate from route handlers (use a service layer or dependency injection).
- Use dependency injection (`Depends`) for database sessions, authentication, and heavy lifting.

## Asynchronous Programming

- Always use `async def` for route handlers unless they are doing heavy CPU-bound blocking operations (then use `def` so FastAPI runs them in a threadpool).
- Never block the event loop. Use async libraries for DB access (e.g. `asyncpg`, async SQLAlchemy) and HTTP clients (`httpx`).

## Pydantic v2 Rules

- Use `model_dump()` instead of `.dict()`.
- Use `model_validate()` instead of `.from_orm()`.
- Use `ConfigDict` instead of `class Config`.

## Error Handling

- Raise `HTTPException` inside route handlers for expected errors.
- Do not let unhandled 500 exceptions crash the server. Use global exception handlers if necessary.
