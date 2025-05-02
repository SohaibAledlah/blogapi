# 1. Start from an official Python image
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy everything from your project to the container
COPY . /app/

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose port 8000 for Django server
EXPOSE 8000

# 6. Command to run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
