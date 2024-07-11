build:
	sudo docker build -t editor .

run:
	sudo docker run -it --rm -v .:/root/code editor
