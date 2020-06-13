# Fzy-fish

Integrate [fzy](https://github.com/jahwthorn/fzy) functionality into [fish](https://github.com/fish-shell/fish-shell)! Includes handy functions to do the following using `fzy`

- search command history
- find and cd into sub-directories

All functions

- are lazily-loaded to keep shell startup time down

Heavily adapted from @hauleth's PR.
Adapted from @jethrokuan's [fzf](https://github.com/jethrokuan/fzf).

## Installation

With [fisher]

```
fisher add Xmgplays/fzy-fisher
```
## Requirements

- [fish](https://github.com/fish-shell/fish-shell) `>=2.4.0`
- [fzy](https://github.com/jahwthorn/fzy) commit #b7ff1a61a845253fb090126c6cd9f29f028b66e6

## About the fzy binary

This package will fail if the `fzy` binary is not detected in your `PATH`.

See the [fzy documentation](https://github.com/jahwthorn/fzy#installation) for instructions to install `fzy` on your system.

## Usage

| New Keybindings | Remarks                                         |
| --------------- | ----------------------------------------------- |
| Ctrl-o          | Find a file.                                    |
| Ctrl-r          | Search through command history.                 |
| Alt-c           | cd into sub-directories (recursively searched). |
| Alt-Shift-c     | cd into sub-directories, including hidden ones. |

Legacy keybindings are kept by default, but these have conflict with
keybindings in fish 2.4.0. If you want to use the new keybindings,
enter the following into your terminal:

```
set -U FZY_LEGACY_KEYBINDINGS 0
```

NOTE: On OS X, Alt-c (Option-c) types ç by default. In iTerm2, you can
send the right escape sequence with Esc-c. If you configure the option
key to act as +Esc (iTerm2 Preferences > Profiles > Default > Keys >
Left option (⌥) acts as: > +Esc), then alt-c will work for fzy as
documented.

###
[tmux]: https://tmux.github.io/
[fisher]: https://github.com/jorgebucaran/fisher
[oh-my-fish]: https://github.com/oh-my-fish/oh-my-fish

## License

fzf is MIT licensed. See the [LICENSE](LICENSE.md) for details.
