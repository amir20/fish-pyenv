set -l pyenv_root ""

if test -z "$PYENV_ROOT"
    set pyenv_root ~/.pyenv
    set -xg PYENV_ROOT "$pyenv_root"
else
    set pyenv_root "$PYENV_ROOT"
end

set -xg PATH "$pyenv_root/bin" $PATH

if not command -s pyenv > /dev/null
    echo "Install <https://github.com/yyuu/pyenv> to use 'pyenv'."
    exit 1
end

if status --is-interactive
    set -xg PATH "$pyenv_root/shims" $PATH
    set -xg PYENV_SHELL fish
end
command mkdir -p "$pyenv_root/"{shims,versions}
