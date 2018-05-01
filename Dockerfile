FROM openshift/java-openjdk:latest

LABEL name="java-openjdk" \
    version="8" \
    io.openshift.tags="base,java,sdk,openjdk" \
    io.k8s.description="OpenJDK base image providing java SDK" \
    io.k8s.display-name="Java 8"

ENV JAVA_HOME="/usr/lib/jvm/java"

RUN microdnf install \
        --enablerepo=rhel-7-server-rpms \
        --nodocs \
        java-${JAVA_VERSION}-openjdk-devel \
    && microdnf clean all \
