cd ./docker-neo4j || exit
podman-compose stop
podman rm neo4j
podman volume rm $(podman volume ls -q --filter name=docker-neo4j*)

cd ../docker-lineage || exit
podman-compose stop

cd ../docker-spark-lineage || exit
podman-compose up -d
