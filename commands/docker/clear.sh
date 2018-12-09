#!/usr/bin/env bash

echo "y" | sudo docker system prune --all
echo "y" | sudo docker system prune --volumes
