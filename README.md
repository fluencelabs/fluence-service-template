## Moscow blockchain hackathon tutorial

### Installation

To compile and run these example you need to install  
 - rust with wasm32-wasi target 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup install nightly
rustup target add wasm32-wasi
```
- Marine tools
```bash
cargo install marine
cargo +nightly install mrepl
```
- Fluence deploying tools
```bash
npm -g install @fluencelabs/fldist
```

### Building

To build all the examples just run the following command
```bash
./build.sh
```

### Deploying and calling from Aqua

TBD
