## SET UP ENVIROMENT

Requirements:

-Docker <br>
-Docker Compose

before running "docker-compose up -d" for the first time, u need to run the following commands:

'''<br>
docker-compose run --rm -v $HOME/.cache/composer:/tmp -e COMPOSER_HOME=/ php composer install <br>
docker-compose run --rm node npm install <br>
'''

now u can run:

''' <br>
docker-compose up -d
'''
