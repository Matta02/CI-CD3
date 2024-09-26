# Start with the FastAPI base image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory
WORKDIR /app

# Copy the contents of your repo into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 8001

# (Optional) Copy and set environment variables from a .env file
# COPY .env /app
ENV ENV_FILE_LOCATION=/app/.env
