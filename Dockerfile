# Base image बदलें (Debian-based slim-buster से Alpine-based पर स्विच करें)
FROM python:3.9.7-alpine

# Dependencies install करें
RUN apk add --no-cache gcc libffi-dev musl-dev ffmpeg aria2 \
    && pip install --no-cache-dir -r requirements.txt

# Working directory सेट करें
WORKDIR /app

# Source code कॉपी करें
COPY . .

# Application स्टार्ट करें
CMD ["python", "./main.py"]
