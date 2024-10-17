load("@bazel_skylib//lib:modules.bzl", "modules")
load("//go/rules_proto/protoc-gen-grpc-gateway:grpc_gateway_deps.bzl", "grpc_gateway_deps")

def _rules_proto_dependencies_impl(_ctx):
    grpc_gateway_deps()
    return modules.use_all_repos(_ctx)

rules_proto_dependencies = module_extension(
    implementation = _rules_proto_dependencies_impl,
)
