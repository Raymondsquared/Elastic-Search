#!/bin/sh -e

# Add a single record
curl -XPUT $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/1?pretty' -d'
{
    "first_name" : "John",
    "last_name" :  "Smith",
    "age" :        25,
    "about" :      "I love to go rock climbing",
    "interests": [ "sports", "music" ]
}'
