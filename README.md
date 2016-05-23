# Big data rocks ! (CI part)
This repo is the CI part of code in https://github.com/etienne-chauchot/bigDataRocks

## Content
For now it contains scripts to create Cassandra and Elasticsearch docker containers, start and stop them and initialize Cassandra and Elasticsearch middlewares.

## Requirements
 - docker (with non privileged user member of docker group to avoid sudo)
 - cqlsh to run cassandra cql scripts
 - curl to run admin requests against Elasticsearch

## How to use
 - Launch create_backend_containers.sh
 - Launch start_backend_containers.sh
 - Launch create_elasticsearch_persons_index_template.sh
 - Use cqlsh with cassandra_keyspace.cql from biDataRocks repository to initiate cassandra database 
 - Now you can run integration tests (*IT.java) from biDataRocks repository
  
## Next steps
 - Automate all plateform initialization (including cqlsh)
 - Example integration pipeline using a common CI plateform to automate all tasks



