FROM ubuntu:20.04
USER root

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y git gcc make curl systemd libreadline-dev libsqlite3-dev libffi-dev

ENV BASE_PATH /opt
WORKDIR $BASE_PATH

ENV GIT_REPO_URL "(Git repo URL)"
ENV RUNNER_NAME=${RUNNER_NAME:-default}
ENV RUNNER_TOKEN=$RUNNER_TOKEN

RUN mkdir -p actions-runner && cd actions-runner && \
    curl -O -L https://github.com/actions/runner/releases/download/v2.280.1/actions-runner-linux-x64-2.280.1.tar.gz && \
    tar xzf ./actions-runner-linux-x64-2.280.1.tar.gz

WORKDIR $BASE_PATH/actions-runner
RUN ./bin/installdependencies.sh

ENV RUNNER_ALLOW_RUNASROOT=1
CMD ./config.sh \
        --unattended \
        --url $GIT_REPO_URL \
        --name $RUNNER_NAME \
        --token $RUNNER_TOKEN && \
    ./run.sh
