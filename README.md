# Bash Scripts (WIP)
A collection of bash scripts. We have the following types of scripts:
 - install (i), commands (c), uninstall (u).

Scripts are under each of the shortened named directories.

# Docker as method of verification
We can utilize docker to test the validity of scripts inside of a virtual container.

Installation:
- Mac:
  - `./i/brew.sh && ./i/docker.sh`
- Linux:
  - `./i/docker.sh`

Run:
- `docker-compose run ubuntu`

Call scripts as needed.
