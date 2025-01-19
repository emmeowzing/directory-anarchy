#! /usr/bin/env bash
# Start the game.

set -eo pipefail
shopt -s extglob


## Required variables.

_ROOT_GAME_DIRECTORY="$(pwd)"
_DEPTH="${DEPTH:?}"

# This is the minimum number of doors a player should see on each new room they enter.
_MIN_ROOM_DOOR_COUNT="${MIN_ROOM_DOOR_COUNT:-1}"


## Functions.


##
# Initialize the directory structure aka game. This can take a few moments,
# depending on how deep the directory structure is.
initialize()
{
    local i

    i=0
    until [ "$i" -gt "$_DEPTH" ]; do

        (( i++ ))
    done

    return 0
}


##
# Main game loop.
main()
{
    initialize

    return 0
}


exit "$(main)"