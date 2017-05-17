load("@protobuf//:protobuf.bzl", "cc_proto_library")

# TODO(htuch): has_services is currently ignored but will in future support
# gRPC stub generation.
def api_proto_library(name, srcs = [], deps = [], has_services = 0):
    cc_proto_library(
        name = name,
        srcs = srcs,
        default_runtime = "@protobuf//:protobuf",
        protoc = "@protobuf//:protoc",
        deps = deps + [
            "@googleapis//:http_api_protos",
            "@protobuf//:cc_wkt_protos",
        ],
    )
