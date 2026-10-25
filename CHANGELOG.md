# Changelog

## 1.1.0

- Move to Python 3.15 and uv with locked runtime and development dependencies.
- Consolidate project metadata and mypy settings in `pyproject.toml`.
- Install only runtime dependencies in Docker and read release versions from project metadata.

## 1.0.0

- Add Docker and Compose support with exports persisted in `Exports/`.
- Publish versioned Linux amd64 images to GHCR after tests and type checking.
