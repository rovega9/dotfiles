# dotfiles

Personal configuration files for terminal tooling on Linux Mint.

## What's included

| Config | Tool |
|--------|------|
| `.config/kitty/kitty.conf` | Kitty terminal — Everforest Dark Hard theme, JetBrains Mono Nerd Font |
| `.config/zellij/layouts/tbrgm.kdl` | Zellij layout — TBR GM workspace (Claude Code + shell + log tail) |
| `.bashrc.d/custom.sh` | Bash additions — Starship prompt, Atuin history, PATH |

## Dependencies

Install these first, then run `install.sh`:

- [Kitty](https://sw.kovidgoyal.net/kitty/) — `sudo apt install kitty`
- [Zellij](https://zellij.dev) — binary from GitHub releases
- [Starship](https://starship.rs) — `curl -sS https://starship.rs/install.sh | sh`
- [Atuin](https://atuin.sh) — `curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh | sh`
- JetBrains Mono Nerd Font — from [nerd-fonts releases](https://github.com/ryanoasis/nerd-fonts/releases)

## Install

```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
bash install.sh
```

Then add to `~/.bashrc`:
```bash
source ~/dotfiles/.bashrc.d/custom.sh
```
