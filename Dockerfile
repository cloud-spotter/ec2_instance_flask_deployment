# First instruction, telling which BASE IMAGE to use
# Alpine is a lightweight, minimal Linux distribution
# --platform specific for ARM-based machines
FROM --platform=arm64 python:3.8-alpine 

# Copy current directory contents from the host filesystem (your machine) 
# to the image filesystem container at /app within the image
COPY . /app

# Set the working directory inside the container for any subsequent instructions (e.g. RUN, CMD...)
WORKDIR /app

# Install dependencies from the requirements.txt file
RUN pip install -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# 'CMD' is the command which runs when the container is started
CMD python /app/application.py