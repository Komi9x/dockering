FROM rust
RUN cargo new webapp
COPY main.rs ./webapp/src/main.rs
WORKDIR ./webapp
RUN cargo add tokio --feature macros, rt-multi.thread
RUN cargo add axum
RUN cargo build --release
CMD ["./target/relesae/webapp"]
