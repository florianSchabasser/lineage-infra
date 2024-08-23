chmod 640 neo4j.conf
sudo rm -rf conf data import logs
mkdir -p conf/{server1,server2,server3,server4} data/{server1,server2,server3,server4} import/{server1,server2,server3,server4} logs/{server1,server2,server3,server4}

export USER_ID="$(id -u)"
export GROUP_ID="$(id -g)"
export NEO4J_DOCKER_IMAGE=neo4j:enterprise
export NEO4J_EDITION=docker_compose
export EXTENDED_CONF=yes
export NEO4J_ACCEPT_LICENSE_AGREEMENT=yes
export NEO4J_AUTH=neo4j/password

docker-compose up -d
