
# Path & variables
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export ANDROID_HOME=/Users/l0s01p7/Library/Android/sdk
export ANDROID_SDK_HOME=/Users/l0s01p7/Library/Android/sdk
export PATH=${PATH}:/Users/l0s01p7/Library/Android/sdk/platform-tools:/Users/l0s01p7/Library/Android/sdk/tools:/Users/l0s01p7/Library/Android/sdk/emulator

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Colors
BGCOLOR=40
RED='\[\e[${BGCOLOR};31m\]'
YELLOW='\[\e[${BGCOLOR};33m\]'
GREEN='\[\e[${BGCOLOR};32m\]'
CYAN='\[\e[${BGCOLOR};36m\]'
LIGHTGRAY='\[\e[${BGCOLOR};37m\]'
DEFAULT='\[\e[00m\]'

# Prompt customization
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
parse_git_email() {
   git config user.email | sed -e 's/.*/~&~/'
}
export PS1="${STARTBGCOLOR}${RED}\u${LIGHTGRAY}@\h ${CYAN}\W ${YELLOW}\$(parse_git_email)${GREEN}\$(parse_git_branch)${DEFAULT} $ "
