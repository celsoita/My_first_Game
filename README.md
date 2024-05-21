# Containerized Game
In this project you will find a simple game I made in godot and containerized with docker
## Status game
In progress
## How it works
With Flask, we create a web server that will serve the files of the Godot 4 application
## Prerequisite
`Docker`
## How use
Open your terminal and paste `docker build -t game:v1 https://github.com/celsoita/My_first_Game.git`

Check if the image `game:v1` was created with command `docker images` 

If you see the image in your images run this `docker run --name web_game -p 443:443 game:v1`

You will have your game at your localhost on port 443 https://localhost
## NOTE
If you're using WSL, your localhost is different to your real machine so check your ip with command
`ip a` and search the ip with your internet interface for example `eth0`
## Possible Problem
ERROR: failed to solve: python:3.9-slim: failed to resolve source metadata for docker.io/library/python:3.9-slim: failed to authorize: failed to fetch anonymous token: Get "https://auth.docker.io/token?scope=repository%3Alibrary%2Fpython%3Apull&service=registry.docker.io": dial tcp: lookup auth.docker.io on 172.29.64.1:53: read udp 172.29.70.106:47068->172.29.64.1:53: i/o timeout

### Solution: do manually `docker pull python:3.9-slim`


# Command in game
## `arrows` for movement
## `z` for fight
## `spacebar` for jump
## `ctrl` for slide
