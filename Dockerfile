# Use the official Ignition 8.3 Docker image as the base
FROM inductiveautomation/ignition:8.3.4

# Switch to the root user to install packages
USER root

# Update the package lists and install git
# The official image is based on Ubuntu, so we use apt-get
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y nano

# Switch back to the 'ignition' user (or whatever user the base image uses by default, usually 'ignition')
# This is a best practice for security
USER ignition
