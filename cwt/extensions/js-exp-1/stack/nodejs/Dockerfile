ARG NODE_TAG="${NODE_TAG}"
FROM node:"${NODE_TAG}"
LABEL maintainer="Paul Michalet <paul.michalet@gmail.com>"

RUN npm install -g yarn

ARG NODE_ENV=production
ENV NODE_ENV="${NODE_ENV}"

ARG NODE_SRC=./web
ENV NODE_SRC="${NODE_SRC}"

# ARG EP_SCRIPT=./cwt/extensions/js-exp-1/stack/nodejs/docker-entrypoint.sh
# ENV EP_SCRIPT="${EP_SCRIPT}"

WORKDIR /app

# TODO [wip] debug file not found in COPY below.
VOLUME ["/app"]

# COPY "${NODE_SRC}/package.json" *yarn* ./
# RUN yarn install && cp yarn.lock /tmp

# COPY "${NODE_SRC}" .
# COPY "${EP_SCRIPT}" /app/docker-entrypoint.sh

EXPOSE 8000
# HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

# RUN chmod +x docker-entrypoint.sh
# ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["yarn", "run", "prod"]
