FROM registry.access.redhat.com/ubi8/ubi-minimal

ENV APP_DIR=/opt/radarr

WORKDIR ${APP_DIR}

RUN microdnf update -y &&\
	microdnf install tar gzip libicu -y &&\
        curl https://download.mono-project.com/repo/centos8-stable.repo | tee /etc/yum.repos.d/mono-centos8-stable.repo &&\
	microdnf install -y mono-complete &&\
	curl -o radarr.tar.gz -sL "https://radarr.servarr.com/v1/update/master/updatefile?os=linux&runtime=netcore&arch=x64" &&\
	tar xvf radarr.tar.gz --strip-components=1 && rm radarr.tar.gz &&\
        mkdir /config &&\
	chgrp -R 0 ${APP_DIR} /config &&\
	chmod -R g=u ${APP_DIR} /config &&\
	microdnf clean all

USER 1000

VOLUME /config

EXPOSE 7878

ENTRYPOINT ["./Radarr", "-nobrowser", "-data=/config"]
