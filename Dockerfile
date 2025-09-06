# base image
FROM python:3.9

# set work directory inside the container to /code
WORKDIR /code

# install dependencies
COPY ./requirements.txt /code/requirements.txt

# install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the entire project to the container
COPY . /code  
# if my main.py is inside the app folder, then I would do
# COPY ./app /code/app


# command to run the app with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]




## To build the docker image
# docker build -t semantic-search-api .
# after this we can see the image in the docker desktop

# everything goes to the /code directory inside the container


# to run, # docker run -d --name semantic-search-container -p 80:80 semantic-search-api
# semantic-search-container: name of the container
# semantic-search-api: name of the image
# -d: detached mode, runs in the background
# creates a container and it starts running