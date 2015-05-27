#Load data:

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=contacts' -u Administrator:$1  -v  -d authType=none -d proxyPort=11216  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b contacts -s 100 contacts

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=customer' -u Administrator:$1  -v  -d authType=none -d proxyPort=11217  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b customer -s 100 customer

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=reviews' -u Administrator:$1  -v  -d authType=none -d proxyPort=11218  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b reviews -s 100 reviews

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=product' -u Administrator:$1  -v  -d authType=sasl -d saslPassword=Pr0dct -d proxyPort=11219  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b product -s 100 product

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=purchases' -u Administrator:$1  -v  -d authType=sasl -d saslPassword=Prch3s3s -d proxyPort=11220  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b purchases -s 100 purchases

curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d 'name=user_profile' -u Administrator:$1  -v  -d authType=none -d proxyPort=11221  -d ramQuotaMB=200
/opt/couchbase/bin/cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b user_profile -s 100 user_profile


