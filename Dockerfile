FROM ubuntu:14.04

# Install packages for building ruby
RUN apt-get install -y software-properties-common && apt-add-repository -y ppa:brightbox/ruby-ng && apt-get update -y && apt-get upgrade -y && apt-get install -y --force-yes build-essential curl wget git && apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev ruby2.1 ruby2.1-dev libmysqlclient-dev && apt-get clean
RUN gem install bundler
RUN mkdir -p /var/app
