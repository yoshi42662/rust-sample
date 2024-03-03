FROM rust:1

# Install Cargo.
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

COPY . /var/www

WORKDIR /var/www
