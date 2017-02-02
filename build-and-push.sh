GOOS=linux GOARCH=386 go build ./add-server.go
docker build -t sohamkamani/go-add-server -f DockerfileAdd .
docker push sohamkamani/go-add-server

GOOS=linux GOARCH=386 go build ./subtract-server.go
docker build -t sohamkamani/go-subtract-server -f DockerfileSubtract .
docker push sohamkamani/go-subtract-server