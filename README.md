## Bazel Container

[Getting started with Bazel.](https://docs.bazel.build/versions/4.2.0/getting-started.html#bazel-container)

#### 1, A google account

You need a google account!

#### 2, Install Command line tool which contains gcloud

[Install Google Cloud SDK from Google.](https://cloud.google.com/sdk/docs/install)

#### 3, Pull image from Google Cloud Marketplace.

```
gcloud auth configure-docker && docker pull l.gcr.io/google/bazel:latest
```

## Build monorepo with Bazel Container

#### Generate BUILD.bzl

[Scans sources files, then generates and updates build files.](https://github.com/bazelbuild/bazel-gazelle#command-line)

```
./gazelle.sh
```

#### Import repositories

[Import repositories from go.mod.](https://github.com/bazelbuild/bazel-gazelle#update-repos)

```
./gazelle-update-repos.sh
```

#### Build

```
./build.sh
```
