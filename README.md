
# Create Topic, Produce and Consume the key-value pair
### Create Topic
```
docker exec broker \
  kafka-topics --create \
    --topic purchases \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1
```

### Produce
```
docker exec --interactive --tty broker \
kafka-console-producer --bootstrap-server localhost:9092 \
                       --topic purchases
```

### Consume
```
docker exec --interactive --tty broker \
kafka-console-consumer --bootstrap-server localhost:9092 \
                       --topic purchases \
                       --from-beginning
```



# Acquired information from docker
### To get a list of existing topics
`docker exec -it broker /bin/kafka-topics --list --bootstrap-server localhost:9092`

### To get a list of existing groups

`docker exec -it broker /bin/kafka-consumer-groups --list --bootstrap-server localhost:9092`

