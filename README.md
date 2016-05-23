# Big data rocks ! (CI part)
This repo is the CI part of code in https://github.com/etienne-chauchot/bigDataRocks

## Content
For now it contains scripts to create Cassandra and Elasticsearch docker containers, start and stop them and initialize Cassandra and Elasticsearch middlewares.

## Requirements
 - docker (with non privileged user member of docker group to avoid sudo)
 - cqlsh to run cassandra cql scripts
 - curl to run admin requests against Elasticsearch

## Next steps
 - Example integration pipeline using a common CI plateform



