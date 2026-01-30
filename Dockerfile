FROM python:3.10-slim

# Disable global hash enforcement
ENV PIP_REQUIRE_HASHES=0

WORKDIR /app
COPY . /app/

RUN apt update && apt install -y awscli

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3","app.py"]
