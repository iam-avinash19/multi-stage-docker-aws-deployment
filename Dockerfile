# stage 1: build the application
FROM python:3.11-slim as builder

WORKDIR /app

COPY requirements.txt
# Install dependemcies
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# stage 2: create the final image
FROM python:3.11-alpine

WORKDIR /app

# copy only the necessary files from the builder stage
COPY --from=builder /usr/local/  /usr/local/
COPY --from=builder /app /app

CMD ["python", "app.py"]