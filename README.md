# repro-bazel-nested-set

```
bazel --version
./write.sh a
bazel --ignore_all_rc_files build --experimental_remote_merkle_tree_cache --disk_cache=~/.cache/bazel_repro_cache //:big
```

Re-run `./write.sh` with a new string argument to bust the cache, if desired.