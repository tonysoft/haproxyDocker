# The first CLI parameter ($1) is the operation we wish to perform

if [ "$1" = "build" ] || [ "$1" = "delete" ]
then

	sudo docker rmi -f haproxy
		# remove any existing image with the same name
 
fi
 
if [ "$1" = "build" ] || [ "$1" = "both" ]
then
 
	sudo docker build -t haproxy:latest .
		# build from the Dockerfil at the current directory "."
		# tag (-t) the container with the name specified
 
fi
 
if [ "$1" = "run" ] || [ "$1" = "both" ]
then

	#sudo docker run -d -p 5000:5000 -e "OVERRIDE=/override" haproxy
	#sudo docker run --rm -p 5000:5000 -e "OVERRIDE=/override" haproxy
	sudo docker run --rm -it -p 5000:5000 -e "OVERRIDE=/override" haproxy bash
	#sudo docker run -d -p 80:80 haproxy
fi
