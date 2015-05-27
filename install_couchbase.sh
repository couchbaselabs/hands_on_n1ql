wget http://latestbuilds.hq.couchbase.com/couchbase-server/sherlock/$1/couchbase-server-enterprise_4.0.0-$1-ubuntu14.04_amd64.deb
sudo /etc/init.d/couchbase-server status
sudo dpkg -r couchbase-server
sudo dpkg -i couchbase-server-enterprise_4.0.0-$1-ubuntu14.04_amd64.deb
sleep 30
/opt/couchbase/bin/couchbase-cli cluster-init --cluster-username=Administrator --cluster-password=password --cluster-ramsize=5000 --cluster-index-ramsize=1000 --services=data,index,query --cluster=localhost:8091
sudo /etc/init.d/couchbase-server status
rm couchbase-server-enterprise_4.0.0-$1-ubuntu14.04_amd64.deb
