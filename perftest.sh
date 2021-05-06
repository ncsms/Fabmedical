host="fabmedical-ncs.mongo.cosmos.azure.com"
username="fabmedical-ncs"
password="UCEyoeZYA1MmMW0XGgISXsRllq3GkRf8PytF4ueagtGCx6bBPnIHxZhufkPoVgPFsZLQMhtSpHbw43BnbCPqmA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
