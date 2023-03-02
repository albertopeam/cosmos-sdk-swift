#!/bin/bash

verify_installation() {
    if !command -v $1 &> /dev/null
    then
        echo "$1 could not be found. Install it before continue"
        exit
    else
        echo "$1 installed"
    fi
}

echo "Verifying dependencies..."
verify_installation go 
echo "$(go version)"
verify_installation git
echo "$(git --version)"
verify_installation buf
echo "$(buf --version)"
verify_installation protobuf
echo "$(protoc --version)"
verify_installation swift-protobuf
echo "$(protoc-gen-swift --version)"
verify_installation grpc-swift
echo "$(protoc-gen-grpc-swift --version)"

echo "Code generation started..."
cosmos_commit_hash=8cb30a2c4de74dc9bd8d260b1e75e176 # 
cosmos_code=./Sources/CosmosSDK/
cosmos_code_output=./Sources/CosmosSDK/protobufs
swift_code_output=./Sources/CosmosSDK/
rm -r $cosmos_code*
echo "Deleted swift code from directory: $swift_code_output"
buf export buf.build/cosmos/cosmos-sdk:$cosmos_commit_hash --output $cosmos_code_output
echo "Downloaded cosmos-sdk with hash: $cosmos_commit_hash to directory: $cosmos_code_output"
cd $cosmos_code_output
buf generate --template ../../../buf-local.gen.yaml --output . --verbose
cp -R gen/. ../.
echo "Generated swift code and copied to directory: $swift_code_output"
cd ..
rm -r ./protobufs
echo "Deleted cosmos-sdk download directory: $cosmos_code_output"