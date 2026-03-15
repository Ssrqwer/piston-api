FROM ghcr.io/engineer-man/piston:latest

# The image already has its own startup command
# We just need to ensure languages are installed
COPY install.sh /install.sh
RUN chmod +x /install.sh

# Override the default command to run our install script first
ENTRYPOINT ["/install.sh"]