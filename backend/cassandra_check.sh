while ! nc -z nginx-cass-django-todo-react-db-1 9042; do
    sleep 1
done
echo "Cassandra is ready"
node example.js