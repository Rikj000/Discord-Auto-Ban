# Deriving the latest base image
FROM python:latest

# Labels as key value pair
LABEL Maintainer="Rikj000"

# Prepare environment (Create folder & set the app working directory)
RUN mkdir /discord-auto-ban
WORKDIR /discord-auto-ban

# Copy files from the working directory into the container
COPY autoban.py ./
COPY requirements.txt ./

# Install the requirements & run the Auto-Ban Bot
RUN pip install -r requirements.txt
CMD [ "python", "./autoban.py"]