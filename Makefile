all: build

build:
	docker build -t plexconnect:latest -f Dockerfile --no-cache=true .
certs:
	openssl req -new -nodes -newkey rsa:2048 -out ./assets/certificates/trailers.pem -keyout ./assets/certificates/trailers.key -x509 -days 7300 -subj "/C=US/CN=trailers.apple.com"
	openssl x509 -in ./assets/certificates/trailers.pem -outform der -out ./assets/certificates/trailers.cer && cat ./assets/certificates/trailers.key >> ./assets/certificates/trailers.pem
