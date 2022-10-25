user=$(cat /run/secrets/db_user)
pass=$(cat /run/secrets/db_pass)

echo $user
echo $pass

while ! cqlsh -e 'describe cluster' -u ${user} -p ${pass} ${DB2_NAME} ; do
    sleep 1
done
echo "Cassandra is ready"   
echo "starting node server"
#node example.js
node server.js
