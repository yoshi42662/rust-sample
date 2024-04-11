FROM rust:1

WORKDIR /var/www
COPY . /var/www

# Install Cargo.
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install Crates.
RUN cargo build

RUN rustup component add rustfmt

RUN cargo install cargo-watch

