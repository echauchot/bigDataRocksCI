# Big data rocks ! (CI part)
This repo is the CI part of code in https://github.com/etienne-chauchot/bigDataRocks

## Content
For now it contains scripts to create Cassandra and Elasticsearch docker containers, start and stop them and initialize Cassandra and Elasticsearch middlewares.

## Requirements
 - docker (user that launches scripts must be member of docker group to avoid sudo)
 - cqlsh or datastax dev center to run cassandra cql scripts (see standalone cqsh client https://pypi.python.org/pypi/cqlsh/)
 - curl to run admin requests against Elasticsearch

## How to use
 - clone repo in the same directory that you cloned bigDataRocks repo
 - create backend containers:

	create_backend_containers.sh

 - start backend containers

	start_backend_containers.sh

 - wait some seconds for the containers to start
 - initialize elasticsearch:

	create_elasticsearch_persons_index_template.sh 203.0.113.2

 - Use cqlsh or dev center with cassandra_keyspace.cql from biDataRocks repository to initialize cassandra database 
 - Now you can run integration tests (*IT.java) from biDataRocks repository
 - Additionnal scripts to stop and remove containers are available
  
## Next steps
 - Automate all plateform initialization (including cqlsh)
 - Example integration pipeline using a common CI plateform to automate all tasks



