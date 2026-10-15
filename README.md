# Homebrew tap for AnnZarro

```bash
brew install --cask settylab/annzarro/annzarro
```

This installs the notarized AnnZarro desktop app for macOS 13 (Ventura) or later, Apple silicon
or Intel, from the GitHub release of the same version. Upgrade with `brew upgrade --cask annzarro`,
remove with `brew uninstall --cask annzarro` (add `--zap` to also delete the app's settings, logs and
caches; your datasets in `~/annzarro-data` are never touched).

The Python package is a separate install (`pip install annzarro`); see the
[documentation](https://annzarro.readthedocs.io).

The cask is updated automatically when a release of
[settylab/annzarro](https://github.com/settylab/annzarro) is published; its template lives there in
`packaging/homebrew/`. Please report problems in that repository.
