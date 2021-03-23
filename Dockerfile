FROM node:10.24-alpine
LABEL org.opencontainers.image.source=https://github.com/roboticslab-uc3m/docker-gitbook
RUN npm install -g gitbook-cli gitbook-summary && \
    gitbook install && \
    rm -rf /tmp/* && \
    npm cache clean --force
EXPOSE 4000
VOLUME /gitbook
WORKDIR /gitbook
CMD ["gitbook", "--help"]
