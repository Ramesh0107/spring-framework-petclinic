FROM alpine:latest
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 9008
ENTRYPOINT ["node"]
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
CMD ["server.js"]
