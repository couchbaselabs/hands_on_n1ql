# create_indexes.sh

for b in contacts customer reviews user_profile
do
	qry='statement=CREATE PRIMARY INDEX ON '
	qry+=$b
	curl http://127.0.0.1:8093/query/service -XPOST -d "$qry"
done

curl http://localhost:8093/query/service -d 'statement=create primary index on purchases' -XPOST -u purchases:Prch3s3s
curl http://localhost:8093/query/service -d 'statement=create primary index on product' -XPOST -u  product:Pr0dct 

