#/bin/bash

child=$!
wait "$child"
