while ! nc -z ${DB_CONTAINER_NAME} 9042; do
    sleep 1
done
echo "Cassandra is ready"   
echo "starting node server"
#node example.js
node server.js
