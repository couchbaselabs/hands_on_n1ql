
install_couchbase.sh - script to download and install Ubuntu 14.04 version of Couchbase 
build.sh - script to create, load and index buckets for hand_on_n1ql
hands_on_n1ql - Ubuntu 14.04 binary 

### Instructions:

#### To download and install couchbase 

$./install_couchbase.sh 3030

Note: install_couchbase.sh requires build number.

#### To create buckets, load buckets, create indexes and run hands_on_n1ql binary

$./build.sh

Note: build.sh assumes Couchbase Server admin credentials to be Administrator/password

To create, load and index buckets in separate steps, proceed as follows:

#### To create buckets 
$ ./recreate_buckets.sh password

#### To load buckets 
$ ./load_data.sh password

#### To create primary key indexes
$ ./create_indexes.sh

#### run hands_on_n1ql binary
$ ./hands_on_n1ql 

#### open localhost:8000

Note: recreate_buckets.sh and load_data.sh require the Couchbase Server's Administrator password

