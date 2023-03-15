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
cosmos_commit_hash=4074ba39c09e4b4799271a56a053227c # 0.46.11 -> https://buf.build/cosmos/cosmos-sdk/tags
code=./Sources/CosmosSDK/Cosmos
protos_output=./Sources/CosmosSDK/Cosmos/protobufs
rm -r $code*
echo "Deleted swift code from directory: $code"
buf export buf.build/cosmos/cosmos-sdk:$cosmos_commit_hash --output $protos_output
echo "Downloaded cosmos-sdk with hash: $cosmos_commit_hash to directory: $protos_output"
cd $protos_output
buf generate --template ../../../../buf-local.gen.yaml --output . --verbose
cp -R gen/. ../.
echo "Generated swift code and copied to directory: $code"
cd ..
rm -r ./protobufs
echo "Deleted cosmos-sdk download directory: $protos_output"
