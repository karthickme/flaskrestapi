# flaskrestapi

Steps to use the app in local <br>
docker build . -t flaskapp:latest

docker run -d -p 5000:5000 flaskapp:latest

curl --location 'http://localhost:5000/api/startjob'  --header 'Content-Type: application/json' --data '{"name":"YourNameHere"}'
