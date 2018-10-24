# Pyenv

[pyenv] plugin support for the fish shell.

## Install

With [fisher]

```
fisher add rominf/omf-plugin-pyenv
```

With [oh-my-fish]

```
omf install https://github.com/rominf/omf-plugin-pyenv
```

## Notes

You need [pyenv] to use this plugin.

This plugin replaces what `status --is-interactive; and . (pyenv init -|psub)`
does in a more fishy way. This brings the startup time of your shell down
as we do not generate full completions every time the shell starts but only
when `pyenv` gets called.

On Fish 2.3.0 and later support was introduced that automatically loads
snippets in `conf.d`. However, these snippets are evaluated **before** your
`config.fish`. If you're setting `PYENV_ROOT` in your `config.fish` to
relocate your pyenv installation this will be evaluated after our plugin
gets loaded and hence have no effect. In order to fix this you should drop
a `000-env.fish` file in your `~/.config/fish/conf.d` folder which sets
up your environment accordingly.

[fisher]: https://github.com/jorgebucaran/fisher
[oh-my-fish]: https://github.com/oh-my-fish/oh-my-fish
[pyenv]: https://github.com/pyenv/pyenv
