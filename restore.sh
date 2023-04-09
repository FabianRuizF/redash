mkdir /opt/redash/
cp env /opt/redash/env
cd data
docker-compose up -d
cd ..
sleep 10
docker cp redash.sql data_postgres_1:/
docker exec data_postgres_1 /usr/local/bin/psql -h localhost -U postgres -f redash.sql
docker exec -it data_server_1  /app/manage.py users password $1 $2
