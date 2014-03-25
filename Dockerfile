FROM	docker-ut
MAINTAINER	lucas@rufy.com

ADD https://github.com/coreos/etcd/releases/download/v0.3.0/etcd-v0.3.0-linux-amd64.tar.gz /etcd.tgz
ADD run.sh /run.sh
ADD tcp-proxy /usr/bin/tcp-proxy

RUN tar xfz etcd.tgz
RUN mv etcd-*/etcdctl /usr/bin/
RUN rm -rf /etcd*
RUN chmod +x run.sh

CMD	/run.sh
