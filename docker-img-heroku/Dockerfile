#
# docker build --no-cache -t heroku .
#
FROM debian:9

RUN apt-get update && \
    apt-get install -y apt-transport-https curl gnupg software-properties-common && \
    add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" && \
    curl -L https://cli-assets.heroku.com/apt/release.key > heroku.key && \
    apt-key add heroku.key && \
    apt-get update && \
    apt-get install -y heroku && \
    rm -f heroku.key
