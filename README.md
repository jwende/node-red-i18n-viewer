# node-red-i18n-viewer

Creates a docker image for running i18n-viewer with project specific settings.ini - origin project: https://github.com/node-red/i18n-viewer

How to run it: 
* update settings.ini with your github repository, git branch and paths to the locales
* build the docker image: docker build -t node-red:i18n .
* run the docker container: docker run -it -p 2880:2880 node-red:i18n
* open http://localhost:2880
