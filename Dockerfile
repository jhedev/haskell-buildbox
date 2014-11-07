FROM haskell:7.8

MAINTAINER joel.hermanns@gmail.com

RUN apt-get update && apt-get install -y curl

RUN bash -c "`curl -sL https://raw.githubusercontent.com/buildbox/agent/master/install.sh`"

CMD /root/.buildbox/buildbox-agent start --access-token $ACCESS_TOKEN