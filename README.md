Requirements:

1 Couchbase Server 4.0 installed and running with Data, Index and Query services
2 PATH environment variable includes path to Couchbase Server 4.0 bin directory

Steps:

# create the buckets (drops the buckets if they are present)
$ sh recreate_buckets.sh password

# load the buckets 
$ tar zxvf data.tar.gz
$ sh load_data.sh password

# create primary key indexes
$ sh create_indexes.sh

Note: recreate_buckets.sh and load_data.sh requires the Couchbase Server's Administrator password

