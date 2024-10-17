"""
Third-party proto dependencies
"""

load("@build_stack_rules_proto//rules/proto:proto_repository.bzl", "proto_repository")

def proto_repositories():
    """third party proto repositories
    """
    proto_repository(
        name = "protoapis",
        build_directives = [
            "gazelle:exclude testdata",
            "gazelle:exclude google/protobuf/compiler/ruby",
            "gazelle:exclude google/protobuf/util",
            "gazelle:proto_language go enable true",
            "gazelle:proto_language ts enable true",
        ],
        build_file_expunge = True,
        build_file_proto_mode = "file",
        cfgs = ["//tools:protoc_gen_validate_config.yaml"],
        deleted_files = [
            "google/protobuf/any_test.proto",
            "google/protobuf/map_lite_unittest.proto",
            "google/protobuf/map_proto2_unittest.proto",
            "google/protobuf/map_proto3_unittest.proto",
            "google/protobuf/map_unittest.proto",
            "google/protobuf/test_messages_proto2.proto",
            "google/protobuf/test_messages_proto3.proto",
            "google/protobuf/unittest.proto",
            "google/protobuf/unittest_arena.proto",
            "google/protobuf/unittest_custom_options.proto",
            "google/protobuf/unittest_drop_unknown_fields.proto",
            "google/protobuf/unittest_embed_optimize_for.proto",
            "google/protobuf/unittest_empty.proto",
            "google/protobuf/unittest_enormous_descriptor.proto",
            "google/protobuf/unittest_import_lite.proto",
            "google/protobuf/unittest_import_public_lite.proto",
            "google/protobuf/unittest_import_public.proto",
            "google/protobuf/unittest_import.proto",
            "google/protobuf/unittest_lazy_dependencies_custom_option.proto",
            "google/protobuf/unittest_lazy_dependencies_enum.proto",
            "google/protobuf/unittest_lazy_dependencies.proto",
            "google/protobuf/unittest_lite_imports_nonlite.proto",
            "google/protobuf/unittest_lite.proto",
            "google/protobuf/unittest_mset_wire_format.proto",
            "google/protobuf/unittest_mset.proto",
            "google/protobuf/unittest_no_field_presence.proto",
            "google/protobuf/unittest_no_generic_services.proto",
            "google/protobuf/unittest_optimize_for.proto",
            "google/protobuf/unittest_preserve_unknown_enum.proto",
            "google/protobuf/unittest_preserve_unknown_enum2.proto",
            "google/protobuf/unittest_proto3_arena_lite.proto",
            "google/protobuf/unittest_proto3_arena.proto",
            "google/protobuf/unittest_proto3_lite.proto",
            "google/protobuf/unittest_proto3_optional.proto",
            "google/protobuf/unittest_proto3.proto",
            "google/protobuf/unittest_retention.proto",
            "google/protobuf/unittest_well_known_types.proto",
            "google/protobuf/compiler/cpp/test_bad_identifiers.proto",
        ],
        reresolve_known_proto_imports = True,
        sha256 = "087c2ec84a07308318d35e0e39717e2037e05d14e628244602a2c78fbe203fa5",
        strip_prefix = "protobuf-a74f54b724bdc2fe0bfc271f4dc0ceb159805625/src",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/a74f54b724bdc2fe0bfc271f4dc0ceb159805625.tar.gz"],
    )

    proto_repository(
        name = "googleapis",
        build_directives = [
            "gazelle:exclude google/ads/googleads/v12/services",
            "gazelle:exclude google/ads/googleads/v13/services",
            "gazelle:exclude google/ads/googleads/v14/services",
            "gazelle:proto_language go enable true",
            "gazelle:proto_language ts enable true",
        ],
        imports = ["@protoapis//:imports.csv"],
        build_file_expunge = True,
        build_file_proto_mode = "file",
        reresolve_known_proto_imports = True,
        cfgs = ["//:rules_proto_config.yaml"],
        sha256 = "e5b59ae2c0c812e3867158eca8e484fddb96dff03b8e2073bf44242b708fa919",
        strip_prefix = "googleapis-e115ab1839cb6e1bd953e40337b7e84001291766",
        urls = ["https://github.com/googleapis/googleapis/archive/e115ab1839cb6e1bd953e40337b7e84001291766.tar.gz"],
    )
