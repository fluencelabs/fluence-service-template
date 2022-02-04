#!/bin/sh

(
  cd local_storage || exit;
  cargo update --aggressive;
  marine build --release;
)

(
  cd curl_adapter || exit;
  cargo update --aggressive;
  marine build --release;
)

(
  cd facade || exit;
  cargo update --aggressive;
  marine build --release;
)

rm -f artifacts/* || true
mkdir -p artifacts

cp ./local_storage/target/wasm32-wasi/release/local_storage.wasm artifacts/
cp ./curl_adapter/target/wasm32-wasi/release/curl_adapter.wasm artifacts/
cp ./facade/target/wasm32-wasi/release/facade.wasm artifacts/
