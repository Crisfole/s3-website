FROM starefossen/ruby-node

VOLUME ["/website", "/config"]
WORKDIR /website


RUN apt-get -y update \
    && apt-get -y install default-jre-headless \
    && npm install -g npm@"$NPM_VERSION" \
    && npm cache clear --force \
    && gem install s3_website
