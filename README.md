Forge Docker Images
===

## Usage

To use this image, run:

```sh
# run latest:
docker run -p 25565:25565 -p 24454:24454/udp -v "$(PWD)"/world:/forge/world kgrubb/forge

# run a 1.16 server:
docker run -p 25565:25565 -p 24454:24454/udp -v "$(PWD)"/world:/forge/world kgrubb/forge:1.16
```

## Build Forge Servers

### 1.16

Build:
```sh
docker build -t forge:1.16 -f 1.16.Dockerfile .
```

Run:
```sh
MSYS_NO_PATHCONV=1  docker run -p 25565:25565 -p 24454:24454/udp -v "$(PWD)"/world:/forge/world forge:1.16
```

### 1.18

```sh
docker build -t forge:1.18 -f 1.18.Dockerfile .
```

Run:
```sh
MSYS_NO_PATHCONV=1 docker run -p 25565:25565 -p 24454:24454/udp -v "$(PWD)"/world:/forge/world forge:1.18
```

## Pushing a Client Release

```sh
git tag -a thecycle-2.0.5 -m "release 2.0.5" && git push --tags
```