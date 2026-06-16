# IGS Cross-Client State — 2026-06-15

## Current goal

Align the durable local IGS repository with the working project state so that:

- ChatGPT web state
- local Ubuntu repository state
- Codex state
- future GitHub state

can refer to the same project files.

## Current canonical local repository

```text
~/Downloads/AI/gpt/IGS
```

## Current GitHub target

```text
github.com/gray3s/IGS
```

## Notes

The local filesystem repository must become the durable source of truth.

ChatGPT project memory is not automatically present on the local drive. It must be written into explicit files before it can be committed and pushed.
