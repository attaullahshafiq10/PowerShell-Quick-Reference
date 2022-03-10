# Use these commands to install MySQL Shell utility into a container running
# the official MySQL distribution via Docker Hub.
#
# docker pull mysql:8.0.26
# export CONTAINER_ID=$(docker run --detach --env MYSQL_ROOT_PASSWORD=12345 mysql:8.0.26)
# docker exec --interactive --tty $CONTAINER_ID bash

apt update && apt-get install httpie --yes

# Use the Debian or Ubuntu package
export FILENAME='mysql-shell_8.0.26-1debian10_amd64.deb'
export FILENAME='mysql-shell_8.0.26-1ubuntu20.04_amd64.deb'
export FILENAME='mysql-shell_8.0.27-1debian11_amd64.deb'

pip3 install httpie
http --download https://cdn.mysql.com//Downloads/MySQL-Shell/$FILENAME
dpkg --install $FILENAME
apt-get install --fix-broken --yes
