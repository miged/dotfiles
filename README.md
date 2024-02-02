# Some dotfiles

My dotfiles for command line stuff.

## Usage

1. Clone repo
```
git clone https://github.com/miged/dotfiles.git
```

2. Run stow
```
stow .
```

## Conflicting files

If stow complains about conflicting files, you can overwrite your current config with the following commands:

```
stow --adopt .
git restore .
```
