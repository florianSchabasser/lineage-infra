docker network create --driver bridge shared

cd ./docker-hadoop || exit
docker-compose up -d

cd ../docker-kafka || exit
docker-compose up -d

cd ../docker-neo4j || exit
docker-compose up -d

cd ../docker-lineage || exit
docker-compose up -d

cd ../docker-spark-lineage || exit
docker-compose up -d

cd ../docker-spark || exit
docker-compose up -d
