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
evmos_commit_hash=c66c6f141d044e31a4ae77f5b852bcb5 # 11.0.2 -> https://buf.build/evmos/evmos
code=./Sources/CosmosSDK/Evmos
protos_output=./Sources/CosmosSDK/Evmos/protobufs
rm -r $code*
echo "Deleted swift code from directory: $code"
buf export buf.build/evmos/evmos:$evmos_commit_hash --output $protos_output
echo "Downloaded evmos-sdk with hash: $evmos_commit_hash to directory: $protos_output"
cd $protos_output
buf generate --template ../../../../buf-local.gen.yaml --output . --verbose
cp -R gen/evmos_*.swift ../.
echo "Generated swift code and copied to directory: $code"
cd ..
rm -r ./protobufs
echo "Deleted evmos-sdk download directory: $protos_output"
