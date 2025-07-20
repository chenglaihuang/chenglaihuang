eval "$(nodenv init -)"
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Applications/PyCharm.app/Contents/MacOS:$PATH"
# Android credentials
export GRADLE_KEY_PASS=
export GRADLE_STORE_PASS=

# Duolingo CLI - https://github.com/duolingo/cli
. "${HOME}/.duolingo/init.sh"
eval export PATH="/Users/chenglai/.jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/opt/homebrew/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
jenv rehash 2>/dev/null
jenv refresh-plugins
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LIBMEMCACHED="/opt/homebrew"
export CFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"

export ANDROID_SDK_ROOT="${HOME}/Library/Android/sdk" # This is for Mac. On Linux, omit /Library
export PATH="${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/tools:${PATH}"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Use social-content-backend service credentials
export DUOLINGO_ACCOUNT_CREDENTIALS="{\"jwt\": \"$(duo jwt social-content)\"}"

# duolingo-ios
if command -v rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RUN_MAKE_ON_CHECKOUT=1
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
source /Users/chenglai/duolingo-android/show-debug.sh
