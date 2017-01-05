#!/bin/sh -e

# Count the number of documents in the cluster
# curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/_count?pretty' -d '
# {
#     "query": {
#         "match_all": {}
#     }
# }
# '

# Retreiving a document, specify the address of the document—the index, type, and ID.
# curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/1?pretty'

# Simple search, By default, a search will return the top 10 results.
# curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/_search?pretty'

# lightweight search method that is easy to use. This method is often referred to as a query-string search.
# curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/_search?q=last_name:Smith&pretty'

# a rich, flexible, query language called the query DSL, which allows us to build much more complicated, robust queries.
# curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/_search?pretty' -d'
# {
#     "query" : {
#         "match" : {
#             "last_name" : "Smith"
#         }
#     }
# }'

# filter, which allows us to execute structured searches efficiently
curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/_search?pretty' -d'
{
    "query" : {
        "bool" : {
            "must" : {
                "match" : {
                    "last_name" : "smith"
                }
            },
            "filter" : {
                "range" : {
                    "age" : { "gt" : 30 }
                }
            }
        }
    }
}'
