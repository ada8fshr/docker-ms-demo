docker run --net my-mongo-cluster --name s1 -d -p 8080:8080 sohamkamani/go-add-server
docker run --net my-mongo-cluster --name s2 -d -p 8081:8081 sohamkamani/go-subtract-server
docker run --net my-mongo-cluster --name nginx-server -p 8000:8000 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx