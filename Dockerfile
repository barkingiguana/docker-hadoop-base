FROM barkingiguana/java

MAINTAINER Craig R Webster <craig@barkingiguana.com>

ADD cdh4.list /etc/apt.sources.d/cdh4.list
ADD cdh4.key /tmp/cdh4.key
RUN DEBIAN_FRONTEND=noninteractive apt-key add /tmp/cdh4.key && rm /tmp/cdh4.key && apt-get -qq update
