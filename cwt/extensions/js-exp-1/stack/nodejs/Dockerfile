ARG NODE_TAG="${NODE_TAG}"
FROM node:"${NODE_TAG}"
LABEL maintainer="Paul Michalet <paul.michalet@gmail.com>"

ARG NODE_ENV=production
ENV NODE_ENV="${NODE_ENV}"

ARG NODE_SRC=./web
ENV NODE_SRC="${NODE_SRC}"

WORKDIR /app

# TODO [wip] debug file not found in COPY below.
VOLUME ["/app"]
# COPY "${NODE_SRC}" .
# COPY "${EP_SCRIPT}" /app/docker-entrypoint.sh

EXPOSE 8000
# HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

CMD ["npm", "run", "prod"]
