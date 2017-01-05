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
curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/megacorp/employee/_search?pretty'
