# docker-factorio-server

Docker image for factorio servers

## Usage

Go to a directory of you choice in which you want the server data to be stored (e.g. `/opt/factorio`).

#### Plain Docker

To generate the config files execute: 
```shell
docker run --rm -v $PWD/config:/srv/factorio/config -v $PWD/saves:/srv/factorio/saves -v $PWD/mods:/srv/factorio/mods derenderkeks/factorio-server ./generate-server.sh
```

To start the factorio server execute:
```shell
docker run --rm -v $PWD/config:/srv/factorio/config -v $PWD/saves:/srv/factorio/saves -v $PWD/mods:/srv/factorio/mods derenderkeks/factorio-server
```

#### docker-compose

To generate the config files execute: 
```shell
docker-compose run factorio_server ./generate-server.sh
```

To start the factorio server execute:
```shell
docker-compose up
```
