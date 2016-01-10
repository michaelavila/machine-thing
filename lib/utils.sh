include() {
  source "${MAC_PATH}/lib/${1}.sh"
}
export -f include

# ensure that a module is installed and configured to be used
#
module() {
  loginfo "starting module: ${1}"

  local module_path="${MAC_PATH}/modules/${1}"
  [ -d "${MAC_PATH}/modules" ] || fail "no modules at (${MAC_PATH}/modules)"
  [ -d "${module_path}" ]      || fail "module (${module_path}) does not exist!"
  pushd "${module_path}"

  # 1) brew up osx goodness
  if [ -f Brewfile ]; then
    brew bundle --file="${module_path}/Brewfile" >/dev/null
    [ $? -eq 0 ] && loginfo "brewed"
  else
    logdebug "no brewfile, skipping"
  fi

  # 2) run any manual installation steps
  if [ -x install ]; then
    ./install
    [ $? -eq 0 ] && loginfo "installed"
  else
    logdebug "no install (or not executable), skipping"
  fi

  popd
}
export -f module

# quiet versions of pushd/popd
pushd() {
  command pushd "$@" > /dev/null
}

popd() {
  command popd "$@" > /dev/null
}

# echo and exit in one command
fail() {
  logerror "$1"
  exit 1
}

# colors
PFX='\033['
SFX=''

RCol="${PFX}0m${SFX}"    # Text Reset

# Regular           	       Bold                         Underline                    High Intensity               BoldHigh Intens              Background                   High Intensity Backgrounds
Bla="${PFX}0;30m${SFX}";     BBla="${PFX}1;30m${SFX}";    UBla="${PFX}4;30m${SFX}";    IBla="${PFX}0;90m${SFX}";    BIBla="${PFX}1;90m${SFX}";   On_Bla="${PFX}40m${SFX}";    On_IBla="${PFX}0;100m${SFX}";
Red="${PFX}0;31m${SFX}";     BRed="${PFX}1;31m${SFX}";    URed="${PFX}4;31m${SFX}";    IRed="${PFX}0;91m${SFX}";    BIRed="${PFX}1;91m${SFX}";   On_Red="${PFX}41m${SFX}";    On_IRed="${PFX}0;101m${SFX}";
Gre="${PFX}0;32m${SFX}";     BGre="${PFX}1;32m${SFX}";    UGre="${PFX}4;32m${SFX}";    IGre="${PFX}0;92m${SFX}";    BIGre="${PFX}1;92m${SFX}";   On_Gre="${PFX}42m${SFX}";    On_IGre="${PFX}0;102m${SFX}";
Yel="${PFX}0;33m${SFX}";     BYel="${PFX}1;33m${SFX}";    UYel="${PFX}4;33m${SFX}";    IYel="${PFX}0;93m${SFX}";    BIYel="${PFX}1;93m${SFX}";   On_Yel="${PFX}43m${SFX}";    On_IYel="${PFX}0;103m${SFX}";
Blu="${PFX}0;34m${SFX}";     BBlu="${PFX}1;34m${SFX}";    UBlu="${PFX}4;34m${SFX}";    IBlu="${PFX}0;94m${SFX}";    BIBlu="${PFX}1;94m${SFX}";   On_Blu="${PFX}44m${SFX}";    On_IBlu="${PFX}0;104m${SFX}";
Pur="${PFX}0;35m${SFX}";     BPur="${PFX}1;35m${SFX}";    UPur="${PFX}4;35m${SFX}";    IPur="${PFX}0;95m${SFX}";    BIPur="${PFX}1;95m${SFX}";   On_Pur="${PFX}45m${SFX}";    On_IPur="${PFX}0;105m${SFX}";
Cya="${PFX}0;36m${SFX}";     BCya="${PFX}1;36m${SFX}";    UCya="${PFX}4;36m${SFX}";    ICya="${PFX}0;96m${SFX}";    BICya="${PFX}1;96m${SFX}";   On_Cya="${PFX}46m${SFX}";    On_ICya="${PFX}0;106m${SFX}";
Whi="${PFX}0;37m${SFX}";     BWhi="${PFX}1;37m${SFX}";    UWhi="${PFX}4;37m${SFX}";    IWhi="${PFX}0;97m${SFX}";    BIWhi="${PFX}1;97m${SFX}";   On_Whi="${PFX}47m${SFX}";    On_IWhi="${PFX}0;107m${SFX}";

# Logging

logdebug() {
  echo "${BBlu}[DEBUG]${IBlu} ${1}${RCol}"
}

loginfo() {
  echo "${BYel}[INFO]${IYel} ${1}${RCol}"
}

logwarn() {
  echo "${BPur}[WARN]${IPur} ${1}${RCol}"
}

logerror() {
  echo "${BRed}[ERROR]${IRed} ${1}${RCol}"
}
