FROM tomcat:8-alpine
LABEL maintainer="Yago Lima <yagotoledolima@gmail.com>"

RUN apk add -U tzdata

COPY tzupdater/ziupdater-1.0.2.2.jar tzupdater.jar
COPY tzdata-latest.tar.gz tzdata-latest.tar.gz

RUN java -jar tzupdater.jar -l file://`pwd`/tzdata-latest.tar.gz && \
        rm -r tzupdater.jar && \
        rm tzdata-latest.tar.gz

