#Load data
# This script requires 1 parameter, the Couchbase administrator password
# 
# This script assumes Couchbase bin directory is in path
#
tar zxf data.tar.gz
for b in contacts customer reviews product purchases user_profile customer_profile
do
    echo "Populating bucket $b"
    cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b $b -s 100 $b
    rm -rf $b
done
