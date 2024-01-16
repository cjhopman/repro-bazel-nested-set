# repro-bazel-nested-set

Reproduction case for https://github.com/bazelbuild/bazel/issues/20862

```
bazel --version
./write.sh a
bazel --ignore_all_rc_files build --experimental_remote_merkle_tree_cache --experimental_remote_merkle_tree_cache_size=0 --disk_cache=~/.cache/bazel_repro_cache //:big
```

The command takes approximately 2 minutes to complete on `bazelbuild/7.0.0`, and only a couple of seconds on `bazelbuild/6.4.0`

Re-run `./write.sh` with a new string argument to bust the cache, if desired.