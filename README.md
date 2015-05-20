### Requirements:

Couchbase Server 4.0 installed and running with Data, Index and Query services

PATH environment variable includes path to Couchbase Server 4.0 bin directory

### Steps:

#### create the buckets (drops the buckets if they are present)
$ sh recreate_buckets.sh password

#### load the buckets 
$ tar zxvf data.tar.gz

$ sh load_data.sh password

#### create primary key indexes
$ sh create_indexes.sh

#### build hands_on_n1ql binary
$ ./build.sh

#### run hands_on_n1ql binary
$ ./hands_on_n1ql 

#### open localhost:8000

Note: recreate_buckets.sh and load_data.sh require the Couchbase Server's Administrator password

