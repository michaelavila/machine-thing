source "$MAC_PATH/lib/colors.sh"

# quiet versions of pushd/popd
pushd() {
  command pushd "$@" > /dev/null
}

popd() {
  command popd "$@" > /dev/null
}

# echo and exit in one command
fail() {
  echo "${BRed}$1${RCol}"
  exit 1
}
