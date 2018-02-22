#!/bin/sh

#
# Build Docker images
#
for img in python python-flask python-flask-app
do
	echo "[ docker-img-${img} => ${img} ]"
	cd docker-img-${img}
	docker build --no-cache -t ${img} .
	cd ..
done
