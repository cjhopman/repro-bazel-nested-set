# repro-bazel-nested-set

```
./write.sh a
bazel build //:big
```

Re-run `./write.sh` with a new string argument to bust the cache, if desired.