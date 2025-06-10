docker run --name postgres \
  --network="host" \
  -e POSTGRES_USER=yale \
  -e POSTGRES_PASSWORD=12345 \
  -e POSTGRES_DB=yale \
  -p 5432:5432 \
  -d postgres


docker run --rm --network="host" dbmate -u "postgres://yale:12345@127.0.0.1:5432/yale?sslmode=disable" up


