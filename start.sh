cd ./docker-hadoop || exit
docker-compose up -d

cd ../docker-kafka || exit
docker-compose up -d

cd ../docker-neo4j || exit
export USER_ID="$(id -u)"
export GROUP_ID="$(id -g)"
export NEO4J_DOCKER_IMAGE=neo4j:enterprise
export NEO4J_EDITION=docker_compose
export EXTENDED_CONF=yes
export NEO4J_ACCEPT_LICENSE_AGREEMENT=yes
export NEO4J_AUTH=neo4j/password
docker-compose up -d
