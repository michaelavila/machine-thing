local pfx='\033['
local sfx=''

RCol="${pfx}0m${sfx}"    # Text Reset

# Regular           	     Bold                         Underline                    High Intensity               BoldHigh Intens              Background                   High Intensity Backgrounds
Bla="${pfx}0;30m${sfx}";     BBla="${pfx}1;30m${sfx}";    UBla="${pfx}4;30m${sfx}";    IBla="${pfx}0;90m${sfx}";    BIBla="${pfx}1;90m${sfx}";   On_Bla="${pfx}40m${sfx}";    On_IBla="${pfx}0;100m${sfx}";
Red="${pfx}0;31m${sfx}";     BRed="${pfx}1;31m${sfx}";    URed="${pfx}4;31m${sfx}";    IRed="${pfx}0;91m${sfx}";    BIRed="${pfx}1;91m${sfx}";   On_Red="${pfx}41m${sfx}";    On_IRed="${pfx}0;101m${sfx}";
Gre="${pfx}0;32m${sfx}";     BGre="${pfx}1;32m${sfx}";    UGre="${pfx}4;32m${sfx}";    IGre="${pfx}0;92m${sfx}";    BIGre="${pfx}1;92m${sfx}";   On_Gre="${pfx}42m${sfx}";    On_IGre="${pfx}0;102m${sfx}";
Yel="${pfx}0;33m${sfx}";     BYel="${pfx}1;33m${sfx}";    UYel="${pfx}4;33m${sfx}";    IYel="${pfx}0;93m${sfx}";    BIYel="${pfx}1;93m${sfx}";   On_Yel="${pfx}43m${sfx}";    On_IYel="${pfx}0;103m${sfx}";
Blu="${pfx}0;34m${sfx}";     BBlu="${pfx}1;34m${sfx}";    UBlu="${pfx}4;34m${sfx}";    IBlu="${pfx}0;94m${sfx}";    BIBlu="${pfx}1;94m${sfx}";   On_Blu="${pfx}44m${sfx}";    On_IBlu="${pfx}0;104m${sfx}";
Pur="${pfx}0;35m${sfx}";     BPur="${pfx}1;35m${sfx}";    UPur="${pfx}4;35m${sfx}";    IPur="${pfx}0;95m${sfx}";    BIPur="${pfx}1;95m${sfx}";   On_Pur="${pfx}45m${sfx}";    On_IPur="${pfx}0;105m${sfx}";
Cya="${pfx}0;36m${sfx}";     BCya="${pfx}1;36m${sfx}";    UCya="${pfx}4;36m${sfx}";    ICya="${pfx}0;96m${sfx}";    BICya="${pfx}1;96m${sfx}";   On_Cya="${pfx}46m${sfx}";    On_ICya="${pfx}0;106m${sfx}";
Whi="${pfx}0;37m${sfx}";     BWhi="${pfx}1;37m${sfx}";    UWhi="${pfx}4;37m${sfx}";    IWhi="${pfx}0;97m${sfx}";    BIWhi="${pfx}1;97m${sfx}";   On_Whi="${pfx}47m${sfx}";    On_IWhi="${pfx}0;107m${sfx}";
