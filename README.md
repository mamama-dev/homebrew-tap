# mamama-dev/homebrew-tap

Homebrew tap for mamama, inc. apps.

## Install BiBimba

```sh
brew tap mamama-dev/tap
brew trust mamama-dev/tap
brew install --cask bibimba
```

Homebrew 7 only loads casks from third-party taps you have trusted, which is what the `brew trust` line does.

## Update

BiBimba updates itself through Sparkle, so this is optional:

```sh
brew upgrade --cask bibimba
```

BiBimba is a paid app with a 7-day trial. The cask only installs it.
