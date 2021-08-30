PROJECT_DIR=github.com/xujintao/bazel-demo

docker run \
  --rm \
  -e GOPATH=/tmp/bazel/go \
  -e GOCACHE=/tmp/bazel/.cache/go-build \
  -e GOPROXY=https://goproxy.io,direct \
  -e USER="$(id -u)" \
  -u "$(id -u):$(id -g)" \
  -v ~/$PROJECT_DIR:/$PROJECT_DIR \
  -v /tmp/bazel:/tmp/bazel \
  -w /$PROJECT_DIR \
  l.gcr.io/google/bazel:latest \
  --output_user_root=/tmp/bazel/build_output \
  build //...