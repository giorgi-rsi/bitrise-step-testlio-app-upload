#!/bin/bash
set -ex

TESTLIO_AUTHORIZATION=${authorization}
PROJECT_ID=${project_id}
APP_NAME=${name}
APP_VERSION=${version}
APP_FILE=${file}

curl --request POST https://api.testlio.com/build/v3/collections/$PROJECT_ID/builds \
    -H 'Content-type: multipart/form-data' \
    -H "Authorization: $TESTLIO_AUTHORIZATION" \
    -F name=$APP_NAME \
    -F version=$APP_VERSION \
    -F "file=@$APP_FILE"

exit 0