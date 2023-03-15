# Cosmos SDK Swift

[Cosmos SDK](https://github.com/cosmos/cosmos-sdk) makes usage of protobuf and gRPC to define its APIs.

Using BSR and protoc(optional) we can easily generate Swift code to interact with the Cosmos blockchains.
This repository contains only generated code.

## Versions

Package | cosmos-sdk | Commit hash                      | protoc-gen-swift| protoc-gen-grpc-swift
--------|------------|----------------------------------|-----------------|-----------------------
0.46.11 | 0.46.11    | 4074ba39c09e4b4799271a56a053227c | 1.21.0          | 1.14.0

## Cosmos endpoints
* [Mintscan](https://www.mintscan.io/cosmos/info) provides info about the public grpc endpoints available. 

## Code generation

### Custom generation
The script `generate-buf-local.sh` is ready to make code generation using `buf`. It downloads and generates code into Sources/CosmosSDK. To regenerate the cosmos-sdk for a custom version, update the property `cosmos_commit_hash` with the target cosmos-sdk commit hash and run the script.

### How code generation works
#### Tools(Optional)
This step is optional and depends if you want to use remote plugins(Check Remote BSR Plugins)
1. Protobuf compiler `brew install protobuf` [Github](https://github.com/protocolbuffers/protobuf)
    * Make sure that protobuf is on the system path `protoc --version`
2. Swift protobuf plugin `brew install swift-protobuf`. [Github](https://github.com/apple/swift-protobuf)
    * Make sure that swift protobuf plugin is on the system path `protoc-gen-swift --version`
3. Swift gRPC plugin `brew install grpc-swift`. [Github](https://github.com/grpc/grpc-swift)
    * Make sure that gRPC swift protobuf plugin is on the system path `protoc-gen-grpc-swift --version`

#### Cosmos code generation procedure
1. [COSMOS-SDK PROTO DOC](https://github.com/cosmos/cosmos-sdk/tree/main/proto). Cosmos uses BSR to manage their API.
2. BSR: Buf Schema Registry
    * [INTRODUCTION](https://docs.buf.build/bsr/introduction)
    * [BSR GETTING STARTED](https://docs.buf.build/tutorials/getting-started-with-bsr)
        * [Install GO](https://go.dev/dl/)
        * [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
        * [Install Buf](https://docs.buf.build/installation)
    * [Buf CLI doc](https://docs.buf.build/reference/cli/buf)
3. [COSMOS SDK PROTOS CODE GENERATION](https://buf.build/cosmos/cosmos-sdk/docs/main)
    * Pick a SDK version commit to download the protos
        * [BSR cosmos sdk commits](https://github.com/cosmos/cosmos-sdk/tree/main/proto)
        * [0.46.x commit](https://buf.build/cosmos/cosmos-sdk/commits/8cb30a2c4de74dc9bd8d260b1e75e176)
    * Code generation can be done with local protoc tools or with remote protoc tools:
        * Local tools:
            * Install optional tools
            * [Buf export](https://docs.buf.build/reference/cli/buf/export) + [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Export a specific version of a remote module to a local directory. `buf export buf.build/cosmos/cosmos-sdk:${commit} --output .`            
                * For Cosmos v0.46.x `buf export buf.build/cosmos/cosmos-sdk:8cb30a2c4de74dc9bd8d260b1e75e176 --output .`
            * Create a yaml named `buf-local.gen.yaml` and configure it to generate the swift code for protos and gRPC.
                * Check that the swift-protobuf and grpc-swift versions installed are the same than the libraries that the CosmosSDK package depends on.
                    * `protoc-gen-swift --version`
                    * `protoc-gen-grpc-swift --version`
                * Configure yaml to run `swift-protobuf` and `grpc-swift`. Checkout [Buf generate](https://docs.buf.build/reference/cli/buf/generate) for more info
            * [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Generate code with local plugins `buf generate --template buf-local.gen.yaml --verbose .`            
        * Remote tools:
            * [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Create a yaml named `buf-remote.gen.yaml` and configure it to generate the swift code for protos and gRPC.                    
                * Configure yaml to run `swift-protobuf` and `grpc-swift`
                    * Check that the swift-protobuf and grpc-swift versions defined in the yaml are the same than the libraries that the CosmosSDK package depends on.
                        * [BSR swift-protobuf versions](https://buf.build/apple/swift)
                        * [BSR grpc-swift versions](https://buf.build/grpc/swift)
                    * Use [Remote BSR Plugins](https://buf.build/plugins) to avoid install local tools.
                        * [BSR gRPC swift plugin doc](https://buf.build/grpc/swift)
                        * [BSR swift plugin doc](https://buf.build/apple/swift)
                * Generate code with remote plugins `buf generate --template buf-remote.gen.yaml buf.build/cosmos/cosmos-sdk:8cb30a2c4de74dc9bd8d260b1e75e176`
    * Code generation script. Using the `generate-cosmos-buf-local.sh` script the cosmos sdk will be generated using local tools and bsr
        * Change the property `cosmos_commit_hash` in the script to update the commit from where the code is being generated.
        * Run the script and the code will be generated on `Sources/CosmosSDK` 
                
#### Osmosis code generation procedure
1. Search osmosis labs on (bsr registry)[https://buf.build/osmosis-labs/osmosis].
2. Pick a commit (bsr registry commits)[https://buf.build/osmosis-labs/osmosis/commits/], `81ded5dc0f8f46d8b93b42b66f8b5fdf`
3. 
 

## gCurl
* List available grpc enpoints `grpcurl -plaintext cosmos-grpc.polkachu.com:14990 list`
* List available grpc methods for a service `grpcurl -plaintext cosmos-grpc.polkachu.com:14990 list cosmos.auth.v1beta1.Query`
* Describe available grpc methods for a service`grpcurl -plaintext cosmos-grpc.polkachu.com:14990 describe cosmos.auth.v1beta1.Query`

## WIP 
* Test/Showcase SDK API's
* Create multiple frameworks
    * Osmosis
    * Cosmos
    * All
* How to set package version? via TAG
* Document where to find the bsr tags. How to verify them regarding github protos?
* Github actions - tests
* Doc chain registry
    * doc chain registry in tests https://github.com/cosmos/chain-registry/blob/master/cosmoshub/chain.json
    * or other ways to find prod/test urls
