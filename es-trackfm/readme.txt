GROUP ID: L15
Bruno Aguiar, 80177
José Moreira, 79671

1st. Kafka related commands:
bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic kafka-trackfm
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic kafka-trackfm --from-beginning
kafka only works in kafka console, sending to the topic named "kafka-trackfm" some information about the last music played.

2nd. Docker related commands:
sudo docker run --name trackfm_db -d -p3306:3306 -e MYSQL_ROOT_PASSWORD=1234 mysql:latest
sudo docker exec -it trackfm_db /bin/bash
mysql -uroot -p1234
CREATE DATABASE trackfm_db;USE trackfm_db;

3rd. Start spring project.

4th. Start react 
Open cmd in frontend directory
npm start
Open localhost:3000

JPA and Scheduling are used to constantly refresh the docker database (named trackfm_db, user root and password 1234) to show in the WebApp user buaguiar recently played/playing songs.