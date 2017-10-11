#!/usr/bin/env bash

docker run --rm --interactive --tty \
    --user $UID:$UID \
    --volume $(pwd):/srv/spl_types \
    --volume /etc/passwd:/etc/passwd:ro \
    --volume /etc/group:/etc/group:ro \
    --volume $HOME/.composer:/composer \
    samizdam/php:7.0.24-cli composer $@