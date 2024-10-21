cd ../docker-neo4j || exit
podman-compose stop
podman rm neo4j
podman volume rm $(podman volume ls -qa --filter name=docker-neo4j*)

cd ../docker-lineage || exit
podman-compose stop

cd ./docker-hadoop || exit
podman-compose up -d

cd ../docker-kafka || exit
podman-compose up -d

cd ../docker-spark-lineage || exit
podman-compose up -d
