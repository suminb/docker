FROM ubuntu:20.04

RUN apt update -y && \
    apt install -y curl openjdk-11-jdk openssh-server

WORKDIR /opt
RUN curl -OL https://dlcdn.apache.org/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz && \
    tar zxf spark-3.2.0-bin-hadoop3.2.tgz && \
    mv spark-3.2.0-bin-hadoop3.2 spark

# Packages required for Spark on S3
WORKDIR /opt/spark/jars
RUN curl -OL https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar && \
    curl -OL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.11.534/aws-java-sdk-1.11.534.jar && \
    curl -OL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.11.534/aws-java-sdk-core-1.11.534.jar && \
    curl -OL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.11.534/aws-java-sdk-dynamodb-1.11.534.jar && \
    curl -OL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-kms/1.11.534/aws-java-sdk-kms-1.11.534.jar && \
    curl -OL https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.11.534/aws-java-sdk-s3-1.11.534.jar && \
    curl -OL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpclient/4.5.3/httpclient-4.5.3.jar && \
    curl -OL https://repo1.maven.org/maven2/joda-time/joda-time/2.9.9/joda-time-2.9.9.jar

CMD /opt/spark/sbin/start-master.sh && tail -f /dev/null