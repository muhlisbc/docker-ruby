FROM debian:jessie

MAINTAINER Muhlis BC "muhlisbc@gmail.com"

RUN buildDeps=' \
	ca-certificates \
	nginx-full \
	ruby-full \
	nodejs \
	' \
	&& apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y $buildDeps \
	&& gem install bundler --no-doc --no-ri \
	&& rm -rf /var/lib/apt/lists/* /tmp/* \
