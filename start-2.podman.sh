cd ./docker-spark-lineage || exit
podman-compose stop

cd ../docker-neo4j || exit
podman-compose up -d
