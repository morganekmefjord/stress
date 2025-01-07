# Use a lightweight base image
FROM ubuntu:22.04

# Set environment variables to ensure non-interactive installs
ENV DEBIAN_FRONTEND=noninteractive

# Update and install stress-ng
RUN apt-get update && apt-get install -y \
    stress-ng \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set default command to display help
ENTRYPOINT ["stress-ng"]
