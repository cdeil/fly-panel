FROM python:3.12.4 AS builder
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 
RUN pip install -U pip
WORKDIR /app
COPY requirements.txt ./
RUN python -m venv .venv
RUN .venv/bin/pip install -r requirements.txt
COPY app.py ./

FROM python:3.12.4-slim
WORKDIR /app
COPY --from=builder /app .
CMD ["/app/.venv/bin/panel", "serve", "app.py", "--port", "8080", "--allow-websocket-origin=localhost"]
