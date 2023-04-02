FROM ubuntu:jammy-20230308

LABEL maintainer="Ralf Geschke <ralf@kuerbis.org>"

LABEL last_changed="2023-04-02"


# necessary to set default timezone Etc/UTC
ENV DEBIAN_FRONTEND noninteractive


# use Ubuntu 22.04 jammy
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get -y dist-upgrade \
  && apt-get install -y ca-certificates \
  && apt-get install -y --no-install-recommends \
  && apt-get install -y locales apt-utils \
  && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
  && apt-get install -y curl git gnupg dnsdist \
  && rm -rf /var/lib/apt/lists/* 


EXPOSE 53/udp 53/tcp 

CMD ["/usr/bin/dnsdist", "-u","_dnsdist", "-g", "_dnsdist" ,"--supervised"]
