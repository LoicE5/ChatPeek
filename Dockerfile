FROM python:3.15-alpine

COPY --from=ghcr.io/astral-sh/uv:0.13.5 /uv /bin/uv

WORKDIR /app

COPY pyproject.toml uv.lock ./
RUN uv sync --locked --no-dev --no-install-project --no-cache --no-managed-python

COPY ChatPeek.py ./

ENTRYPOINT ["/app/.venv/bin/python", "ChatPeek.py"]
