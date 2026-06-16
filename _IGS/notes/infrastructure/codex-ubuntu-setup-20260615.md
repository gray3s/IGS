# IGS / infrastructure / codex-ubuntu-setup — 2026-06-15

## Status

Codex CLI installation and login were tested on Ubuntu.

Confirmed state:

- Codex CLI installed.
- Version confirmed: `codex-cli 0.140.0`.
- Codex launched in `~/Downloads/AI/gpt/IGS_main`.
- Model shown: `gpt-5.5`.
- ChatGPT Plus OAuth login completed with 2FA.
- Earlier `token_expired` / refresh-token issue appears resolved.
- User can access the Codex `/model` prompt.

## Fixed setup-script issue

Earlier typo:

```bash
cd "$IGS_MAINI_DIR" || exit 1
```

Corrected to:

```bash
cd "$IGS_MAIN_DIR" || exit 1
```

Because the script used `set -u`, the typo caused an unbound-variable failure.

## Current relevance

Codex setup is background infrastructure.

For the immediate GitHub push task, focus should remain on the canonical local IGS repository:

```text
~/Downloads/AI/gpt/IGS
```
