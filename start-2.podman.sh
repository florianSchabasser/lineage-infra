cd ./docker-hadoop || exit
podman-compose up -d

cd ../docker-spark-lineage || exit
podman-compose stop

cd ../docker-kafka || exit
podman-compose up -d

cd ../docker-neo4j || exit
podman-compose up -d

cd ../docker-lineage || exit
podman-compose up -d


