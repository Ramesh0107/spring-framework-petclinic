FROM alpine:latest
RUN apk add --no-cache
WORKDIR /app
COPY . /app
RUN apt update
EXPOSE 9008
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
CMD ["server.js"]
