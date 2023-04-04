FROM ubuntu:lunar-20230314

LABEL maintainer="Ralf Geschke <ralf@kuerbis.org>"

LABEL last_changed="2023-04-04"


# necessary to set default timezone Etc/UTC
ENV DEBIAN_FRONTEND noninteractive


# use Ubuntu 23.04 lunar
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get -y dist-upgrade \
  && apt-get install -y ca-certificates \
  && apt-get install -y --no-install-recommends \
  && apt-get install -y locales apt-utils \
  && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
  && apt-get install -y curl git gnupg dnsdist \
  && apt-get -y upgrade \
  && rm -rf /var/lib/apt/lists/* 


EXPOSE 53/udp 53/tcp 

CMD ["/usr/bin/dnsdist", "-u","_dnsdist", "-g", "_dnsdist" ,"--supervised"]
