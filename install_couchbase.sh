wget http://latestbuilds.hq.couchbase.com/couchbase-server/sherlock/$1/couchbase-server-enterprise_4.0.0-$1-ubuntu14.04_amd64.deb
sudo /etc/init.d/couchbase-server status
sudo dpkg -r couchbase-server
sudo dpkg -i couchbase-server-enterprise_4.0.0-$1-ubuntu14.04_amd64.deb
/opt/couchbase/bin/couchbase-cli cluster-init --cluster-username=Administrator --cluster-password=password --cluster-ramsize=30865 --cluster-index-ramsize=6256 --services=data,index,query --cluster=localhost:8091
sudo /etc/init.d/couchbase-server status