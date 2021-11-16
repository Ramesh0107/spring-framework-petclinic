FROM alpine:latest
RUN apk add --no-cache
RUN usermod -aG docker jenkins
WORKDIR /app
COPY . /app
EXPOSE 9008
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
