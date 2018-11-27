# Bash Scripts (WIP)
A collection of bash scripts. We have the following types of scripts:
 - install, commands, uninstall.

Scripts are under each of the shortened named directories.

# Docker as method of verification
We can utilize docker to test the validity of scripts inside of a virtual container.

Installation:
- Mac:
  - `./install/brew.sh && ./install/docker.sh`
- Linux:
  - `./install/docker.sh`

Run (linux):
- `docker-compose run ubuntu-bionic`

Call scripts as needed.
