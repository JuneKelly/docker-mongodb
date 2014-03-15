# Docker Mongodb

A MongoDB docker image with persistence, suitable for development use.


# Build

`docker build -t mongodb-dev .`


# Run

Make a data directory, for example:
`mkdir -p /data/mongodb`

Run the container:

`docker run -p 127.0.0.1:27017:27017 -v /data/mongodb:/data/db -name mongodb mongodb-dev`
