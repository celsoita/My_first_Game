# Containerized Game
In this project i maded a simple game in godot and containerized with docker
## Status game
In progress
## How it work
With Flask, we create a web server that will serve the files of the Godot 4 application
## Prerequisite
`Docker`
## How use
Open your terminal and paste `docker build -t  game:v1 https://github.com/celsoita/My_first_Game.git`

Check if image `game:v1` was created with command `docker images` 

If image was in your images run this `docker run --name web_game -p 443:443 game:v1`

You will have your game at your localhost on port 443  https://localhost
# NOTE
If are you are in WSL your localhost is different to your real machine so check your ip with command
`ip a` and search the ip with your internet interface for example `eth0`
