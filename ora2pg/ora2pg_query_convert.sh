#!/bin/bash -xv

docker run --rm --net="host" --name pgloader \
    -v $(pwd)/config:/config \
    -v $(pwd)/data:/data \
    georgmoser/ora2pg:21.0 \
    ora2pg -c /config/ora2pg.conf -i /data/input.sql -o /data/output.sql -t QUERY
