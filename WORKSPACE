load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_features",
    sha256 = "3646ffd447753490b77d2380fa63f4d55dd9722e565d84dfda01536b48e183da",
    strip_prefix = "bazel_features-1.19.0",
    url = "https://github.com/bazel-contrib/bazel_features/releases/download/v1.19.0/bazel_features-v1.19.0.tar.gz",
)

load("@bazel_features//:deps.bzl", "bazel_features_deps")

bazel_features_deps()

http_archive(
    name = "aspect_bazel_lib",
    sha256 = "f93d386d8d0b0149031175e81df42a488be4267c3ca2249ba5321c23c60bc1f0",
    strip_prefix = "bazel-lib-2.9.1",
    url = "https://github.com/aspect-build/bazel-lib/releases/download/v2.9.1/bazel-lib-v2.9.1.tar.gz",
)

load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies", "register_yq_toolchains")

aspect_bazel_lib_dependencies()

register_yq_toolchains()
