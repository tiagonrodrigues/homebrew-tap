# homebrew-tap

Homebrew tap for [@tiagonrodrigues](https://github.com/tiagonrodrigues)'s tools.

## Usage

```bash
brew tap tiagonrodrigues/tap
brew install tiagonrodrigues/tap/agent-reaper
```

Or in one line:

```bash
brew install tiagonrodrigues/tap/agent-reaper
```

## Formulae

| Formula | What it is |
|---|---|
| [`agent-reaper`](./Formula/agent-reaper.rb) | macOS tool that kills zombie processes left by AI coding agents. Repo: [tiagonrodrigues/agent-reaper](https://github.com/tiagonrodrigues/agent-reaper). CLI: `reap`. |

## After installing `agent-reaper`

Homebrew installs the `reap` CLI. To enable the background sweep and give it a proper macOS identity (so Login Items shows **Agent Reaper** instead of `bash`), run:

```bash
reap install
```
