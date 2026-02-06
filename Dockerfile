
# 1. Use a stable Python version (3.12) instead of the experimental 3.14
FROM python:3.12-slim

# 2. Install 'uv'
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# 3. Install system dependencies required to compile C code (cffi, pynacl)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libffi-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# 4. Set working directory
WORKDIR /app

# 5. Copy dependency files
COPY pyproject.toml uv.lock ./

# 6. Install dependencies
# We use --frozen to ensure the environment matches our lockfile exactly
RUN uv sync --frozen

# 7. Copy the rest of the application
COPY . .

# 8. Run tests
CMD ["uv", "run", "pytest"]



