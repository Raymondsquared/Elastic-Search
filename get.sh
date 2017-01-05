#!/bin/sh -e

# Count the number of documents in the cluster
curl -XGET $RR_AWS_ELASTIC_SEARCH_URL'/_count?pretty' -d '
{
    "query": {
        "match_all": {}
    }
}
'
