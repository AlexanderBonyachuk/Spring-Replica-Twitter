#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    sanya@192.168.56.101:/home/sanya/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa sanya@192.168.56.101 << EOF

pgrep java | xargs kill -9
nohub java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'