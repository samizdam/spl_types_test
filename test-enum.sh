#!/usr/bin/env bash

docker run --rm --interactive --tty \
    --user $UID:$UID \
    --volume $(pwd):/srv/spl_types \
    samizdam/php:7.0.24-cli php test-enum.php