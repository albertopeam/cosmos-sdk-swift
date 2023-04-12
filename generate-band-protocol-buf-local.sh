#!/bin/bash

set -e

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
verify_installation git
verify_installation wget

zipname=v2.4.1.zip # zip name
chain_dir=chain-2.4.1 # unzip dir name

echo "Code generation started..."
code=./Sources/CosmosSDK/BandProtocol
rm -rf $code*
echo "Deleted swift code from directory: $code"
mkdir -p ./Sources/CosmosSDK/BandProtocol/download
cd ./Sources/CosmosSDK/BandProtocol/download
band_release_url=https://github.com/bandprotocol/chain/archive/refs/tags/$zipname
wget $band_release_url
echo "Downloaded band protocol repo from: $band_release_url to directory /Sources/CosmosSDK/BandProtocol/download"
unzip $zipname
rm $zipname
cp -R $chain_dir/third_party/proto/. $chain_dir/proto
cd $chain_dir/proto
buf generate --template ../../../../../../buf-local.gen.yaml --output . --verbose
cp gen/oracle_v1_*.swift ../../..
echo "Generated swift code and copied to directory: Sources/CosmosSDK/BandProtocol"
cd ../../..
rm -rf download
echo "Deleted band protocol download directory"
