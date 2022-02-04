#!/bin/sh

cargo update --aggressive
marine build --release

rm artifacts/* || true
mkdir -p artifacts

cp ./target/wasm32-wasi/release/greeting.wasm artifacts/
