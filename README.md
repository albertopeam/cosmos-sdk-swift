# COSMOS SDK SWIFT LIB

[Cosmos SDK](https://github.com/cosmos/cosmos-sdk) makes usage of protobuf and gRPC to define its APIs.
Cosmos uses BSR to manage its API definitions.
Using BSR and protoc(optional) we can easily generate Swift code to interact with the Cosmos blockchains. 

## TOOLS(OPTIONAL)
This step is optional and depends if you want to use remote plugins(Check Remote BSR Plugins)
1. Protobuf compiler `brew install protobuf` [Github](https://github.com/protocolbuffers/protobuf)
    * Make sure that protobuf is on the system path `protoc --version`
2. Swift protobuf plugin `brew install swift-protobuf`. [Github](https://github.com/apple/swift-protobuf)
    * Make sure that swift protobuf plugin is on the system path `protoc-gen-swift --version`
3. Swift gRPC plugin `brew install grpc-swift`. [Github](https://github.com/grpc/grpc-swift)
    * Make sure that gRPC swift protobuf plugin is on the system path `protoc-gen-grpc-swift --version`

## CODE GENERATION
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
            * [Buf export](https://docs.buf.build/reference/cli/buf/export) + [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Export a specific version of a remote module to a local directory. `buf export buf.build/cosmos/cosmos-sdk:${commit} --output .`            
                * For Cosmos v0.46.x `buf export buf.build/cosmos/cosmos-sdk:8cb30a2c4de74dc9bd8d260b1e75e176 --output .`
            * Create a yaml named `buf-local.gen.yaml` and configure it to generate the swift code for protos and gRPC.
                * Configure yaml to run `swift-protobuf` and `grpc-swift`. Checkout [Buf generate](https://docs.buf.build/reference/cli/buf/generate) for more info
            * [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Generate code with local plugins `buf generate --template buf-local.gen.yaml --verbose .`            
        * Remote tools:
            * [Buf generate](https://docs.buf.build/reference/cli/buf/generate)
                * Create a yaml named `buf-remote.gen.yaml` and configure it to generate the swift code for protos and gRPC.
                * Configure yaml to run `swift-protobuf` and `grpc-swift`
                    * Use [Remote BSR Plugins](https://buf.build/plugins) to avoid install local tools.
                        * [BSR gRPC swift plugin doc](https://buf.build/grpc/swift)
                        * [BSR swift plugin doc](https://buf.build/apple/swift)
                * Generate code with remote plugins `buf generate --template buf-remote.gen.yaml buf.build/cosmos/cosmos-sdk:8cb30a2c4de74dc9bd8d260b1e75e176` 
4. TODO: CREATE SWIFT PACKAGE
5. TODO: GITHUB ACTIONS?
