# create_indexes.sh

for b in contacts customer reviews product purchases user_profile customer_profile
do
	qry='statement=CREATE PRIMARY INDEX ON '
	qry+=$b
	qry+=' USING GSI'
	curl http://127.0.0.1:8093/query/service -XPOST -d "$qry"
done
