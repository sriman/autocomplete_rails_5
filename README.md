# README

#Rails 5 Autocomplete

This project is all about searching and finding the schools all over the world, it comes with beautiful autocomplete feature, which delivers you name of the schools in split seconds which you are searching for.

Demo Link
https://powerful-mountain-66349.herokuapp.com/

##Technical Stacks used
* Ruby version: 2.5.0

* Rails: 5.2.3

* Mysql: 5.7

* Docker: 18.09.2

* Docker-Compose: 1.23.2

#Installation Prequesties:

As the application is docker supported, it can be run using the docker compose tool. From here we will be guiding you on installing the application in the Mac OS

## Docker & Docker Compose Installation in OSX

Follow this link for installing docker in the local, Docker compose comes with Docker Desktop by default
https://docs.docker.com/docker-for-mac/install/


##Clone the Application
Once docker is installed clone the application in your local system by 

`git clone git@github.com:sriman/autocomplete_rails_5.git`
`cd autocomplete_rails_5`

##build the application

`docker build -t autocomplete_app_v1 .`

##Run the application
`docker-compose -up -d`

Now the application runs in the http://localhost:8088 

##curl request for search

`curl -X GET \
 -H "Content-type: application/json" \
 -H "Accept: application/json" \
 "https://powerful-mountain-66349.herokuapp.com/schools/search?query=ch"`


Happy Coding!







