FROM bash:latest

RUN apk add --no-cache jq

# Create symlinks for /bin/bash and /bin/env if they don't already exist
# Ensuring compatibility with scripts expecting Bash to be at /bin/bash
# And for those using #!/usr/bin/env bash
RUN ln -s $(which bash) /bin/bash || true && \
    ln -s $(which env) /bin/env || true
