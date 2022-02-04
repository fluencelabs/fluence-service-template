#!/bin/sh

(
  cd hello_world || exit;
  ./build.sh
)

(
  cd url-downloader || exit;
  ./build.sh
)

(
  cd ipfs-node || exit;
  ./build.sh
)
