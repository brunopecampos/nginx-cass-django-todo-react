while ! [nc -z ${DB2_NAME} 9042 && nc -z ${DB1_NAME} 9042] ; do
    sleep 1
done
echo "Cassandra is ready"   
echo "starting node server"
#node example.js
node server.js
