#set env vars
set -o allexport; source .env; set +o allexport;

#Restart the stack after files are restored
docker-compose up -d;

sleep 20s;

#restore from dump
gunzip < ./lastDump.sql.gz | docker-compose exec -T database /usr/bin/mysql --binary-mode --user=root --password=$ADMIN_PASSWORD