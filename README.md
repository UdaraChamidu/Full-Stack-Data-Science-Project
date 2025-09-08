## FUll Stack Data Science Project.

### Build a sementic you tube video search application and deploy it.

### Technologies

- Yuotube transcript api
- sentence transforms
- sementic search techniques
- Fast API
- Docker
- AWS

### 4 hats in data science

- Project Manager: Planning, Scope, Managing Resources...(In PM framework, There are 5 main steps...)
- Data Engineer: Buolding data available for analytics and ML application
- - Dta Pipeline (Extract, Transform, Load) , 2 techniques -> ETL and ELT
- Data Scientist:
- ML Engineer:

### After create the model, 3 things to do.

1. create API : API wrap the model
2. Containerized
3. Deploy

![alt text](image.png)

### 4 main steps

1. Create search API with FastAPI : uvicorn main:app --reload
2. Create Docker image for API : semantic-search-api

- docker build -t semantic-search-api .
- docker run -d --name semantic-search-container -p 80:80 semantic-search-api

3. Push image to Docker Hub : youtube-semantic-search-app

- create a repo
- docker tag semantic-search-api udaradoc/youtube-semantic-search-app (repo will add to images in docker desktop)
- docker push udaradoc/youtube-semantic-search-app:latest

4. Deploy container on AWS ECS:
