#!/bin/bash

set -e

for k in GROUP_ID ARTIFACT_ID; do
    v=${!k}
    if [[ -z "$v" ]]; then
	echo "$k is not defined"
	exit 1
    fi
done

mvn archetype:generate \
    -DgroupId="$GROUP_ID" \
    -DartifactId="$ARTIFACT_ID" \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DinteractiveMode=false
