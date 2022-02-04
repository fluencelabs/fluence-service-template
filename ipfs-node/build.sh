#!/bin/sh

(
  cd effector || exit;
  cargo update --aggressive;
  marine build --release;
)

(
  cd pure || exit;
  cargo update --aggressive;
  marine build --release;
)

rm artifacts/* || true
mkdir -p artifacts

cp ./effector/target/wasm32-wasi/release/ipfs_effector.wasm artifacts/
cp ./pure/target/wasm32-wasi/release/ipfs_pure.wasm artifacts/
