ARG VERSION=latest
FROM ghcr.io/felddy/foundryvtt:${VERSION}

# Switch to root
USER root

# Install fvtt CLI as root
RUN corepack enable && corepack npm install -g @foundryvtt/foundryvtt-cli

# Don't override the entrypoint - let the base image use its own
