#/bin/bash

docker build -f Dockerfile.build -t webhook-build:latest --cache-from webhook-build:latest . 
docker run -it --rm -v $(pwd)/target:/usr/src/app/target webhook-build:latest package -T 1C -o -Dmaven.test.skip=true
