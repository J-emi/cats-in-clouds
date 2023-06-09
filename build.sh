#! /bin/sh
GIT_COMMIT=$(git rev-parse --short HEAD)

docker build -t europe-north1-docker.pkg.dev/${TF_VAR_project}/cats-in-clouds:${GIT_COMMIT} \
    -e BUCKET_ID=${BUCKET_ID} \
    -e DB_FILE=${DB_FILE} \
    .