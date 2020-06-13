# README

# Rails 5 Autocomplete

This project is all about searching and finding the schools all over the world, it comes with beautiful autocomplete feature, which delivers you name of the schools in split seconds which you are searching for.

## Demo Link https://powerful-mountain-66349.herokuapp.com/

## Technical Stacks used
* Ruby version: 2.5.0

* Rails: 5.2.3

* Mysql: 5.7

* Docker: 18.09.2

* Docker-Compose: 1.23.2

# Installation Prequesties:

As the application is docker supported, it can be run using the docker compose tool. From here we will be guiding you on installing the application in the Mac OS

## Docker & Docker Compose Installation in OSX

Follow this link for installing docker in the local, Docker compose comes with Docker Desktop by default
https://docs.docker.com/docker-for-mac/install/


## Clone the Application 

Once docker is installed clone the application in your local system by 

`git clone git@github.com:sriman/autocomplete_rails_5.git`
`cd autocomplete_rails_5`

## Build the application

`docker build -t autocomplete_app_v1 .`

## Run the application
`docker-compose -up -d`

## Sample Data load in the database
`docker exec -it <app name> bash`

`rake db:migrate && rake db:seed`

Now the application runs in the http://localhost:8088 


## curl request for search from the server hosted in the HEROKU

`curl -X GET  -H "Content-type: application/json"  -H "Accept: application/json"  "https://powerful-mountain-66349.herokuapp.com/schools/search?query=ch"`

`[{"id":1,"title":"Alpha School","url":"https://powerful-mountain-66349.herokuapp.com/schools/1.json"},{"id":2,"title":"Thiagarajar Model hr sec School","url":"https://powerful-mountain-66349.herokuapp.com/schools/2.json"},{"id":3,"title":"Aachi Global School","url":"https://powerful-mountain-66349.herokuapp.com/schools/3.json"},{"id":4,"title":"Chintadripet Boys Higher Secondary School","url":"https://powerful-mountain-66349.herokuapp.com/schools/4.json"},{"id":5,"title":"Guru Nanak Mat.Hr.Sec School","url":"https://powerful-mountain-66349.herokuapp.com/schools/5.json"},{"id":6,"title":"K.C.Sankaralinga Nadar higher Secondary School","url":"https://powerful-mountain-66349.herokuapp.com/schools/6.json"},{"id":9,"title":"Chennai Public School","url":"https://powerful-mountain-66349.herokuapp.com/schools/9.json"},{"id":10,"title":"CPS Global School","url":"https://powerful-mountain-66349.herokuapp.com/schools/10.json"},{"id":12,"title":"Akshar Arbol International School","url":"https://powerful-mountain-66349.herokuapp.com/schools/12.json"},{"id":13,"title":"Holy Cross Matriculation School Chennai","url":"https://powerful-mountain-66349.herokuapp.com/schools/13.json"},{"id":14,"title":"Sri Sankara Global Cambridge International School","url":"https://powerful-mountain-66349.herokuapp.com/schools/14.json"},{"id":15,"title":"American International School Chennai","url":"https://powerful-mountain-66349.herokuapp.com/schools/15.json"},{"id":16,"title":"AMM Matriculation Higher Secondary School","url":"https://powerful-mountain-66349.herokuapp.com/schools/16.json"},{"id":17,"title":"Asan Memorial Senior Secondary School","url":"https://powerful-mountain-66349.herokuapp.com/schools/17.json"},{"id":19,"title":"Bentinck School, Vepery","url":"https://powerful-mountain-66349.herokuapp.com/schools/19.json"},{"id":20,"title":"Bharath senior secondary school","url":"https://powerful-mountain-66349.herokuapp.com/schools/20.json"},{"id":21,"title":"Chettinad Vidyashram","url":"https://powerful-mountain-66349.herokuapp.com/schools/21.json"},{"id":22,"title":"Chinmaya Vidyalaya","url":"https://powerful-mountain-66349.herokuapp.com/schools/22.json"},{"id":24,"title":"Elementry School","url":"https://powerful-mountain-66349.herokuapp.com/schools/24.json"}]%`


# Happy Coding!


![alt text](https://i.ibb.co/ydSK6R6/Screenshot-2020-06-13-at-6-08-53-PM.png)





