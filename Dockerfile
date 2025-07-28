FROM ghcr.io/actions/actions-runner:2.327.0

ENV GEMINI_VERSION=0.1.14

# Set a non-root user (important for security best practices)
# The actions-runner image typically runs as 'runner' user.

# Install Node.js 22 using NodeSource repository
# This is generally the recommended way to get specific Node.js versions on Debian/Ubuntu.
# Source: https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN sudo apt-get update && \
    sudo apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_22.x | sudo bash - && \
    sudo apt-get install -y nodejs

RUN (type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*

# Switch back to the 'runner' user, as the GitHub Actions runner typically runs as this user.
# It's good practice to run applications with the least privileges necessary.
USER runner
