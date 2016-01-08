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

# adding stuff to files
#
# args:
# - $1: the line to try and add
# - $2: the file to try and add the line too
append_if_not_present() {
  grep -q -F "$1" "$2" || echo "$1" >> $2
}
