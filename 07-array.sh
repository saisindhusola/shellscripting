#!/bin/bash

MOVIES=("Court" "Hit3" "Pushpa3" "Thandel")
echo "First Movie: ${MOVIES[0]}"
echo "First Movie: ${MOVIES[3]}"
echo "First Movie: ${MOVIES[@]}"

echo "First Movie: ${MOVIES[4]}"