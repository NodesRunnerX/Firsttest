#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git clang curl libssl-dev llvm libudev-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
1
reboot
rustup toolchain add nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
wget https://builds.gear.rs/gear-nightly-linux-x86_64.tar.xz && \
tar xvf gear-nightly-linux-x86_64.tar.xz && \
rm gear-nightly-linux-x86_64.tar.xz && \
chmod +x gear-node
apt install make
git clone https://github.com/gear-tech/gear.git
cd gear
 make node-release
 cd /etc/systemd/system 
touch gear-node.service 
sudo nano gear-node.service
