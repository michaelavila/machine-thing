# quiet versions of pushd/popd
pushd() {
  command pushd "$@" > /dev/null
}

popd() {
  command popd "$@" > /dev/null
}

# echo and exit in one command
fail() {
  echo $1
  exit 1
}
