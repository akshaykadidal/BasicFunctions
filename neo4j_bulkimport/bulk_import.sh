bin\neo4j-admin import --mode=csv --nodes:Worker=import\id.csv --relationships:FOLLOWS=import\relations.csv --ignore-missing-nodes=true --multiline-fields=true
