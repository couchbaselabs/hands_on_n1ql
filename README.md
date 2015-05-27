
install_couchbase.sh - download and install Centos 7 version of Couchbase 

build.sh - create, load and index buckets for hand_on_n1ql

hands_on_n1ql - Centos 7 binary 

### Instructions:

#### Download and install couchbase 

$./install_couchbase.sh 3030

Note: install_couchbase.sh requires build number.

#### Create buckets, load buckets, create indexes and run hands_on_n1ql binary

$./build.sh

Note: build.sh assumes Couchbase Server admin credentials to be Administrator/password

To create, load and index buckets in separate steps, proceed as follows:

#### Create buckets 
$ ./recreate_buckets.sh password

#### Load buckets 
$ ./load_data.sh password

#### Create primary key indexes
$ ./create_indexes.sh

#### Run hands_on_n1ql 
$ ./hands_on_n1ql 

#### open localhost:8000

Note: recreate_buckets.sh and load_data.sh require the Couchbase Server's Administrator password

