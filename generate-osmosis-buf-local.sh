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
commit_hash=81ded5dc0f8f46d8b93b42b66f8b5fdf # https://buf.build/osmosis-labs/osmosis/commits/main
code=./Sources/CosmosSDK/Osmosis
protos_output=./Sources/CosmosSDK/Osmosis/protobufs
rm -r $code*
echo "Deleted swift code from directory: $code"
buf export buf.build/osmosis-labs/osmosis:$commit_hash --output $protos_output
echo "Downloaded osmosis-labs with hash: $commit_hash to directory: $protos_output"
cd $protos_output
buf generate --template ../../../../buf-local.gen.yaml --output . --verbose
cp -R gen/osmosis_*.swift ../.
echo "Generated swift code and copied to directory: $code"
cd ..
rm -r ./protobufs
echo "Deleted cosmos-sdk download directory: $protos_output"
