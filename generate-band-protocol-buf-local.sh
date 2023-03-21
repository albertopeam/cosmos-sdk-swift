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
verify_installation git
verify_installation wget
echo "Code generation started..."
code=./Sources/CosmosSDK/BandProtocol
rm -r $code*
echo "Deleted swift code from directory: $code"
mkdir -p ./Sources/CosmosSDK/BandProtocol/download
cd ./Sources/CosmosSDK/BandProtocol/download
band_release_url=https://github.com/bandprotocol/chain/archive/refs/tags/v2.4.1.zip
wget $band_release_url
echo "Downloaded band protocol repo from: $band_release_url to directory /Sources/CosmosSDK/BandProtocol/download"
unzip v2.4.1.zip
cp -r chain-2.4.1/ ./
cd proto
buf generate --template ../../../../../buf-local.gen.yaml --output . --verbose

#cp -R gen/. ../../../.
#echo "Generated swift code and copied to directory: /Sources/CosmosSDK/BandProtocol"
#cd ../..
#rm -r ./Repository
#echo "Deleted band protocol repo: $download_dir"
