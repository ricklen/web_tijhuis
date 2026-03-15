FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Since we're installing Python packages globally, we need to set this to avoid warnings about breaking system packages.
# Also being a dev container this is a setting that co
ENV PIP_BREAK_SYSTEM_PACKAGES=1

# Update and install tools
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes \
    software-properties-common \
    dos2unix \
    npm && npm install -g http-server

# Install Python 3.12
RUN add-apt-repository ppa:deadsnakes/ppa \
    && apt-get install --yes \
    python3.12 \
    python3.12-venv \
    python3.12-dev \
    python3-pip

# Create arguments for version pinning
ARG pre_commit_version=4.3.0


# PIP installs
RUN pip install pre-commit==${pre_commit_version}
