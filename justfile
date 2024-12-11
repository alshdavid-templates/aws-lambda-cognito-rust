run:
  env \
    CLIENT_PATH="{{ justfile_directory() }}/packages/client/dist" \
    cargo run --package httpd

build:
  cargo build --release

build-client:
  cd packages/client && npx rspack build

fmt:
  cargo +nightly fmt

build-lambda:
  cargo build --release
  mkdir dist
  cd target/x86_64-unknown-linux-musl/release && \
  rm -rf bootstrap && \
  mv lambda {{ justfile_directory() }}/dist/bootstrap