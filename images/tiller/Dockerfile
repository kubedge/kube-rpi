FROM debian:jessie-slim

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		ca-certificates \
	&& rm -rf /var/lib/apt/lists/*
ENV HOME /tmp

ADD tiller /

EXPOSE 44134

CMD ["/tiller"]
