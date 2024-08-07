load(":defs.bzl", "deep_rule")

deep_rule(
    name = "big",
    srcs = ["src/file{}".format(i) for i in range(1, 33801)],
)
