docker exec -it redash_postgres_1 /usr/local/bin/pg_dump -h localhost -U postgres -f redash.sql
docker cp redash_postgres_1:/redash.sql .
/opt/redash/env redash_env
