###################################################
# Base images, with common environment, for sibcoin-docker
###################################################
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install g++ make python git curl tar nano mc findutils libzmq3-dev build-essential

# Main group, user
RUN groupadd sibcore
RUN useradd sibcore -m -s /bin/bash -g sibcore

# Environment variables
ENV HOME "/home/sibcore"
ENV NODE_VERSION "4.8.4"
ENV NVM_DIR "${HOME}/.nvm"
ENV NVM_BIN ${HOME}/.nvm/versions/node/v${NODE_VERSION}/bin
ENV PATH ${PATH}":"${NVM_BIN}
ENV NODE_MODULES ${NVM_DIR}/versions/node/v${NODE_VERSION}/lib/node_modules
ENV USER sibcore

# Change user
USER sibcore

# Workspace
WORKDIR ${HOME}

# Install NVM
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

# Install Node and primary global installation of bitcore via NVM
RUN . ${NVM_DIR}/nvm.sh &&\
    nvm install ${NODE_VERSION} &&\
    nvm alias default ${NODE_VERSION} &&\
    npm install git+https://github.com/Sibcoin-developers/bitcore-dash.git -g
