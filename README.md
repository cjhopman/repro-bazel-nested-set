# repro-bazel-nested-set

Reproduction case for https://github.com/facebook/buck2/issues/735

```
buck2 --version
./write.sh a
buck2  build --prefer-local //:big
```

The command takes approximately 1 minute to complete on recent buck2 and only a couple of seconds on `bazelbuild/6.4.0` with some other flags (see https://github.com/DavidANeil/repro-bazel-nested-set).

Re-run `./write.sh` with a new string argument to bust the cache, if desired.
