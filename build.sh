./recreate_buckets.sh password
tar zxf data.tar.gz
./load_data.sh password
rm -rf contacts customer reviews product purchases user_profile
chmod +x create_indexes.sh
./create_indexes.sh
./hands_on_n1ql &
