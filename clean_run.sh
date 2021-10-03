# Build images locally and start mine
find data/mine/gomapmine -mindepth 1 -delete && \
find data/postgres/ -mindepth 1 -delete && \
find data/solr/ -mindepth 1 -delete && \
docker-compose -f local.docker-compose.yml up --build --force-recreate 2>&1 > docker.log
