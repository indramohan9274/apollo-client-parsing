#!/bin/bash

./sh/apollo.sh

export SRCROOT=`pwd`
export CONFIGURATION="Debug"

APOLLO_FRAMEWORK_PATH=./Carthage/Build/iOS/Apollo.framework
SCHEMA_PATH="GraphQL/Schema/schema.json"
API_PATH="GraphQL/API/API.swift"
QUERIES_PATH="GraphQL/Queries"

cd "${SRCROOT}/${TARGET_NAME}"
$APOLLO_FRAMEWORK_PATH/check-and-run-apollo-cli.sh \
  schema:download \
  --endpoint="https://bex-api-loom.us-west-2.prod.expedia.com/graphql" \
  $SCHEMA_PATH

$APOLLO_FRAMEWORK_PATH/check-and-run-apollo-cli.sh \
  codegen:generate \
  --queries="$(find $QUERIES_PATH -name '*.graphql')" \
  --schema=$SCHEMA_PATH $API_PATH
