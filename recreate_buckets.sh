
#Delete and create buckets
for b in contacts customer reviews product purchases user_profile
do
    echo "Deleting bucket $b..."
    curl -XDELETE http://127.0.0.1:8091/pools/default/buckets/$b -u Administrator:$1
    qry='name='
    qry+=$b
    let "port += 1"
    echo "Creating bucket $b..."
    curl http://127.0.0.1:8091/pools/default/buckets -XPOST -d "$qry" -u Administrator:$1  -v  -d authType=none -d proxyPort=$port  -d ramQuotaMB=200
done
echo "Done"
