FROM openjdk:8-alpine
LABEL maintainer="shreyanshpandey08@gmail.com"
# ----
# Install Maven and Gradle
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
    && echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk -U --no-cache \
	--allow-untrusted add \
    curl \
    tar \
    bash \
    openrc \
    wait4ports \
    dbus \
    grep \ 
    udev \
    unzip \
    nodejs \
    nodejs-npm \
    && apk del --purge --force linux-headers binutils-gold gnupg zlib-dev libc-utils \
    /var/cache/apk/* \
    /usr/share/man \
    /tmp/*
ARG MAVEN_VERSION=3.2.3
ARG USER_HOME_DIR="/root"
ARG GRADLE_VERSION=4.10.3
ENV GRADLE_HOME=/usr/share/gradle-${GRADLE_VERSION}
RUN mkdir -p /usr/share/gradle-${GRADLE_VERSION} && \
curl -fsSL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip | unzip /usr/share/gradle-${GRADLE_VERSION}
RUN mkdir -p /usr/share/maven && \
curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar -xzC /usr/share/maven --strip-components=1 && \
ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME=/usr/share/maven
ENV MAVEN_CONFIG="$USER_HOME_DIR/.m2"
ENV M2_HOME=/usr/share/maven
ENV M2=/usr/share/maven/bin
# App related environment variables
ENV PATH ${GRADLE_HOME}/bin:${MAVEN_HOME}/bin:$PATH
# speed up Maven JVM a bit
ENV MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
# make source folder
RUN mkdir -p /usr/src/app/workspace
WORKDIR /usr/src/app/workspace
# install maven dependency packages and API playground (keep in image)
COPY /api-playground/ /usr/src/app/workspace
COPY /Task3-API-Test/ /usr/src/app/workspace
RUN mkdir -p target
RUN mvn -B dependency:resolve-plugins dependency:resolve
COPY . .
RUN mvn package -DskipTests
RUN npm install
ENTRYPOINT ["/bin/bash"]



