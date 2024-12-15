# Install dependencies
RUN apk add --no-cache gcc libffi-dev musl-dev ffmpeg aria2 \
    && if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; else echo "requirements.txt not found"; fi
