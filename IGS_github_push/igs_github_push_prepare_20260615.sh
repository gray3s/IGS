#!/usr/bin/env bash
set -euo pipefail

# IGS / GitHub push preparation
# File:
#   igs_github_push_prepare_20260615.sh
#
# Purpose:
# Prepare the next Codex/Ubuntu step for setting up the canonical IGS
# local/GitHub repository.
#
# This script is intentionally conservative.
# It performs read-only inspection and prints the Codex instructions.
# It does NOT create a GitHub repo.
# It does NOT initialize Git.
# It does NOT add remotes.
# It does NOT commit.
# It does NOT push.
# It does NOT delete, move, or overwrite project files.
#
# Canonical IGS local repository target:
#   ~/Downloads/AI/gpt/IGS
#
# GitHub push/setup working folder:
#   ~/Downloads/AI/gpt/IGS/IGS_github_push
#
# Transitional/current Codex working directory:
#   ~/Downloads/AI/gpt/IGS_main
#
# Important correction:
#   Do NOT treat IGS_main as the final GitHub repository root.
#   Use ~/Downloads/AI/gpt/IGS as the intended canonical repo path.
#
# GitHub target:
#   github.com/gray3s/IGS
#
# Main rule:
#   Inspect first.
#   Do not create, delete, move, commit, push, overwrite, or restructure
#   anything until the exact commands have been reviewed and approved.

echo "=== IGS GitHub push preparation ==="
echo
echo "Script file:"
echo "  $HOME/Downloads/AI/gpt/IGS/IGS_github_push/igs_github_push_prepare_20260615.sh"
echo
echo "Canonical IGS repository target:"
echo "  $HOME/Downloads/AI/gpt/IGS"
echo
echo "GitHub push/setup working folder:"
echo "  $HOME/Downloads/AI/gpt/IGS/IGS_github_push"
echo
echo "Current/transitional Codex directory:"
echo "  $HOME/Downloads/AI/gpt/IGS_main"
echo
echo "GitHub target:"
echo "  github.com/gray3s/IGS"
echo

# --------------------------------------------------------------------
# Read-only local inspection
# --------------------------------------------------------------------
#
# These commands inspect the current local directory state.
# They should not modify files.

echo "=== Read-only local directory inspection ==="

echo
echo "# Current directory:"
pwd || true

echo
echo "# Parent AI/gpt directory:"
ls -la "$HOME/Downloads/AI/gpt" || true

echo
echo "# Canonical IGS target directory:"
ls -la "$HOME/Downloads/AI/gpt/IGS" || true

echo
echo "# GitHub push/setup folder:"
ls -la "$HOME/Downloads/AI/gpt/IGS/IGS_github_push" || true

echo
echo "# Transitional IGS_main directory:"
ls -la "$HOME/Downloads/AI/gpt/IGS_main" || true

# --------------------------------------------------------------------
# Read-only Git inspection
# --------------------------------------------------------------------
#
# These commands inspect Git state.
# They should not change Git files, commits, branches, or remotes.

echo
echo "=== Read-only Git inspection ==="

echo
echo "# Git status for canonical IGS target:"
git -C "$HOME/Downloads/AI/gpt/IGS" status || true

echo
echo "# Git remotes for canonical IGS target:"
git -C "$HOME/Downloads/AI/gpt/IGS" remote -v || true

echo
echo "# Git branch info for canonical IGS target:"
git -C "$HOME/Downloads/AI/gpt/IGS" branch --show-current || true

echo
echo "# Git status for transitional IGS_main:"
git -C "$HOME/Downloads/AI/gpt/IGS_main" status || true

echo
echo "# Git remotes for transitional IGS_main:"
git -C "$HOME/Downloads/AI/gpt/IGS_main" remote -v || true

# --------------------------------------------------------------------
# Read-only GitHub CLI inspection
# --------------------------------------------------------------------
#
# These commands inspect GitHub CLI availability/auth/repo state.
# They may contact GitHub, but should not create or modify a repository.

echo
echo "=== Read-only GitHub CLI inspection ==="

echo
echo "# GitHub CLI location:"
command -v gh || true

echo
echo "# GitHub CLI authentication status:"
gh auth status || true

echo
echo "# Existing GitHub repository check:"
gh repo view gray3s/IGS || true

# --------------------------------------------------------------------
# Codex prompt
# --------------------------------------------------------------------
#
# Copy/paste this prompt into Codex after reviewing the inspection output.

cat <<'CODEX_PROMPT'

=== Codex prompt to paste ===

Goal:
Set up the canonical local/GitHub IGS repository using:

  Local canonical path:
    ~/Downloads/AI/gpt/IGS

  GitHub target:
    github.com/gray3s/IGS

  GitHub push/setup working folder:
    ~/Downloads/AI/gpt/IGS/IGS_github_push

Important correction:
Do not use ~/Downloads/AI/gpt/IGS_main as the final repository root.
IGS_main is the current/transitional Codex working directory.
The preferred canonical repository root is ~/Downloads/AI/gpt/IGS.

Rules:
- Do not delete, overwrite, move, or restructure existing files.
- Do not initialize Git until I approve the exact command.
- Do not create the GitHub repository until I approve the exact command.
- Do not add or change Git remotes until I approve the exact command.
- Do not commit until I approve the exact command.
- Do not push until I approve the exact command.
- First inspect both directories read-only:
    ~/Downloads/AI/gpt/IGS
    ~/Downloads/AI/gpt/IGS_main
- Determine whether ~/Downloads/AI/gpt/IGS already exists.
- Determine whether either directory is already a Git repository.
- Determine whether GitHub CLI is installed and authenticated.
- Determine whether github.com/gray3s/IGS already exists.
- Report the exact recommended next commands before running them.

After inspection, classify each proposed command as:
1. read-only inspection,
2. local file modification,
3. Git state modification,
4. GitHub remote/network modification,
5. system-level modification.

CODEX_PROMPT

# --------------------------------------------------------------------
# Commands that require explicit approval before running
# --------------------------------------------------------------------
#
# These are examples of possible next commands.
# They are intentionally commented out.
# Do NOT uncomment or run until reviewed.
#
# mkdir -p "$HOME/Downloads/AI/gpt/IGS"
# git -C "$HOME/Downloads/AI/gpt/IGS" init
# gh repo create gray3s/IGS --private
# gh repo create gray3s/IGS --public
# git -C "$HOME/Downloads/AI/gpt/IGS" remote add origin git@github.com:gray3s/IGS.git
# git -C "$HOME/Downloads/AI/gpt/IGS" remote add origin https://github.com/gray3s/IGS.git
# git -C "$HOME/Downloads/AI/gpt/IGS" add .
# git -C "$HOME/Downloads/AI/gpt/IGS" commit -m "Initial IGS repository state"
# git -C "$HOME/Downloads/AI/gpt/IGS" branch -M main
# git -C "$HOME/Downloads/AI/gpt/IGS" push -u origin main

echo
echo "=== Done ==="
echo "This script performed read-only inspection only."
echo "Review the Codex prompt printed above before making repository changes."
