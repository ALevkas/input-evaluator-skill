#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="input-evaluator"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Installing ${SKILL_NAME} skill ==="

# 1. Oh My Pi (~/.omp/agent/skills/)
OMP_SKILLS_DIR="${HOME}/.omp/agent/skills"
if [ -d "${HOME}/.omp" ]; then
  mkdir -p "${OMP_SKILLS_DIR}"
  ln -sfn "${SOURCE_DIR}" "${OMP_SKILLS_DIR}/${SKILL_NAME}"
  echo "✓ Installed to Oh My Pi: ${OMP_SKILLS_DIR}/${SKILL_NAME}"
fi

# 2. Claude Code (~/.claude/skills/)
CLAUDE_SKILLS_DIR="${HOME}/.claude/skills"
if [ -d "${HOME}/.claude" ]; then
  mkdir -p "${CLAUDE_SKILLS_DIR}"
  ln -sfn "${SOURCE_DIR}" "${CLAUDE_SKILLS_DIR}/${SKILL_NAME}"
  echo "✓ Installed to Claude Code: ${CLAUDE_SKILLS_DIR}/${SKILL_NAME}"
fi

echo "=== Installation completed successfully ==="
