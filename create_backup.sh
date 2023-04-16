docker exec -it data_postgres_1 /usr/local/bin/pg_dump -h localhost -U postgres -f redash.sql
docker cp data_postgres_1:/redash.sql .
cp /opt/redash/env env
