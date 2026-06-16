# IGS Error Log

## 2026-06-15 — Codex setup typo

Original bad line:

```bash
cd "$IGS_MAINI_DIR" || exit 1
```

Corrected line:

```bash
cd "$IGS_MAIN_DIR" || exit 1
```

Impact:

Because the script used `set -u`, the typo would cause an immediate unbound-variable failure.

## 2026-06-15 — Codex OAuth token issue

Observed errors:

```text
HTTP 401 token_expired
Provided authentication token is expired. Please try signing in again.
```

and later:

```text
Your access token could not be refreshed because your refresh token was already used.
Please log out and sign in again.
```

Resolution:

- Ran Codex login flow again.
- Completed OpenAI OAuth / ChatGPT Plus login with 2FA.
- Codex appeared to resume normal operation.
