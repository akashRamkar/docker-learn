#choosing base image
FROM python:3.12-alpine
#declaring virtual working directory
WORKDIR /src/app/
#copying files from local to virtual working directory
COPY . ./docker/
#installing python dependencies
RUN cd docker && pip install --no-cache-dir -r requirements.txt
#Exposing the working port to the host machine
EXPOSE 8000
#Running the application
CMD ["python", "docker/main/app.py"]


#To expose 8000 port of application on local port 3000
# docker run -p 3000:8000 <image_name>

# To view all available docker images
# docker image ls