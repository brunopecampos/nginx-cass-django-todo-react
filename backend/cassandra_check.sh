while [ $(nc -z ${DB2_NAME} 9042) ]
do
    echo "Cassandra not ready"
    sleep 1
done
echo "Cassandra is ready"   
echo "starting node server"
#node example.js
node server.js
