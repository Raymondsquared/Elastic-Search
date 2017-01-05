#!/bin/sh -e

# Add a single record
# curl -XPUT $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/1?pretty' -d'
# {
#     "first_name" : "John",
#     "last_name" :  "Smith",
#     "age" :        25,
#     "about" :      "I love to go rock climbing",
#     "interests": [ "sports", "music" ]
# }'

# Add multiple records
curl -XPUT $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/2?pretty' -d'
{
    "first_name" :  "Jane",
    "last_name" :   "Smith",
    "age" :         32,
    "about" :       "I like to collect rock albums",
    "interests":  [ "music" ]
}'

curl -XPUT $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/3?pretty' -d'
{
    "first_name" :  "Douglas",
    "last_name" :   "Fir",
    "age" :         35,
    "about":        "I like to build cabinets",
    "interests":  [ "forestry" ]
}'
