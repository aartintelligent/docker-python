FROM python:bookworm

COPY app /app

COPY requirements.txt /requirements.txt

RUN if [ -s "/requirements.txt" ]; then \
        if ! pip install -r "/requirements.txt"; then \
            echo "Failed to install requirements from requirements.txt"; \
            exit 1; \
        fi; \
    fi

WORKDIR /app
