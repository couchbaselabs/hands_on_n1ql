#Load data:

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b contacts -s 100 tutorial

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b customer -s 100 customer

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b reviews -s 100 reviews

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b product -s 100 product

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b purchases -s 100 purchases

cbdocloader -u Administrator -p $1 -n 127.0.0.1:8091 -b user_profile -s 100 user_profile




