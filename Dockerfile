# Use a lightweight base image with Python installed
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies specified in the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application code to the container's working directory
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Command to run the FastAPI app with Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
