#! /bin/sh
GIT_COMMIT=$(git rev-parse --short HEAD)

docker build -t europe-north1-docker.pkg.dev/winged-plate-378113/chonky-repository:${GIT_COMMIT} .
docker push europe-north1-docker.pkg.dev/winged-plate-378113/chonky-repository:${GIT_COMMIT}
