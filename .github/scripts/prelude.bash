#!/bin/bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/../.."

mkdir -p $HOME/.local

## Global
export CC=aarch64-linux-gnu-gcc
sudo apt-get update
sudo apt-get install -y curl wget unzip gcc-aarch64-linux-gnu build-essential

source "$SCRIPT_DIR/prelude/aws.bash"
source "$SCRIPT_DIR/prelude/just.bash"
source "$SCRIPT_DIR/prelude/nodejs.bash"
source "$SCRIPT_DIR/prelude/rust.bash"
source "$SCRIPT_DIR/prelude/terraform.bash"

## Done
which node
which npm
which cargo
which aws
which terraform

cd $ROOT_DIR