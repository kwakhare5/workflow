---
name: sqlalchemy-expert
description: "Expert in SQLAlchemy 2.0 and Postgres for Python backends. Auto-loads when doing database work in Python. Triggers: sqlalchemy, postgres, database, sqlmodel, asyncpg."
---

# SQLAlchemy 2.0 Best Practices

## Core Setup

- Use **SQLAlchemy 2.0+** syntax strictly (no legacy 1.4 syntax).
- Use `asyncpg` as the database driver for maximum asynchronous performance with Postgres.
- Use `DeclarativeBase` for mapping.
- Use `Mapped[T]` and `mapped_column()` for type-safe models instead of `Column`.

## Session Management

- Use `AsyncSession` for all database interactions.
- Provide the session to route handlers using FastAPI Dependency Injection (`yield` inside a generator).
- Do not commit inside reusable repository functions; flush if necessary, but commit at the route/transaction boundary.

## Query Construction

- Always use the 2.0-style `select()`, `insert()`, `update()`, and `delete()` constructs.
- Execute queries using `session.execute(stmt)`.
- Use `.scalar_one_or_none()` or `.scalars().all()` to fetch results cleanly.

## Migrations

- Always use **Alembic** to manage schema migrations.
- Never use `metadata.create_all()` in production code.
