#!/usr/bin/env bash
# ============================================================
# Karpathy Skills — Multi-agent installer
# https://github.com/LearnPrompt/andrej-karpathy-skills
# ============================================================

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

DRY_RUN=0
TARGETS=""

usage() {
  cat <<'EOF'
Usage:
  bash install.sh [--target codex|codex-native|claude|openclaw|hermes|clacky|opencode|opencode-legacy|all] [--dry-run]

Examples:
  bash install.sh
  bash install.sh --target claude
  bash install.sh --target claude --target openclaw
  bash install.sh --target all
  KARPATHY_SKILLS_TARGETS="codex,claude,hermes" bash install.sh

Default target:
  codex -> ~/.agents/skills

Install one agent at a time unless you explicitly pass --target all.
EOF
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target)
      if [ "$#" -lt 2 ]; then
        echo -e "${RED}Missing value for --target${NC}" >&2
        exit 1
      fi
      if [ -z "$TARGETS" ]; then
        TARGETS="$2"
      else
        TARGETS="${TARGETS},$2"
      fi
      shift 2
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo -e "${RED}Unknown argument: $1${NC}" >&2
      usage
      exit 1
      ;;
  esac
done

if [ -n "${KARPATHY_SKILLS_TARGETS:-}" ]; then
  TARGETS="$KARPATHY_SKILLS_TARGETS"
fi

if [ -z "$TARGETS" ]; then
  TARGETS="codex"
fi

target_dir_for() {
  case "$1" in
    codex) echo "${HOME}/.agents/skills" ;;
    codex-native) echo "${HOME}/.codex/skills" ;;
    claude) echo "${HOME}/.claude/skills" ;;
    openclaw) echo "${HOME}/.openclaw/skills" ;;
    hermes) echo "${HOME}/.hermes/skills" ;;
    clacky) echo "${HOME}/.clacky/skills" ;;
    opencode) echo "${HOME}/.config/opencode/skills" ;;
    opencode-legacy) echo "${HOME}/.opencode/skills" ;;
    *)
      return 1
      ;;
  esac
}

expand_targets() {
  local raw="$1"

  if [ "$raw" = "all" ]; then
    echo "codex codex-native claude openclaw hermes clacky opencode opencode-legacy"
    return
  fi

  echo "$raw" | tr ',' ' '
}

install_skill_to_dir() {
  local skill_dir="$1"
  local target_root="$2"
  local skill_name
  local target

  skill_name="$(basename "$skill_dir")"
  target="$target_root/$skill_name"

  if [ ! -f "$skill_dir/SKILL.md" ]; then
    return
  fi

  if [ "$DRY_RUN" -eq 1 ]; then
    echo -e "    ${YELLOW}dry-run${NC} $skill_name -> $target"
    return
  fi

  mkdir -p "$target_root"

  if [ -e "$target" ] || [ -L "$target" ]; then
    rm -rf "$target"
  fi

  cp -R "$skill_dir" "$target"
  echo -e "    ${GREEN}installed${NC} $skill_name"
}

echo ""
echo -e "${BLUE}Karpathy Skills${NC}"
echo -e "${BLUE}================${NC}"
echo ""

SKILL_DIRS=()
while IFS= read -r skill_dir; do
  SKILL_DIRS+=("$skill_dir")
done < <(find "$REPO_DIR" -maxdepth 1 -type d -name 'karpathy-*' | sort)

if [ "${#SKILL_DIRS[@]}" -eq 0 ]; then
  echo -e "${RED}No karpathy-* skill directories found in $REPO_DIR${NC}" >&2
  exit 1
fi

TOTAL=0
DESTINATIONS=0

for target_name in $(expand_targets "$TARGETS"); do
  if [ -z "$target_name" ]; then
    continue
  fi

  if ! target_root="$(target_dir_for "$target_name")"; then
    echo -e "${RED}Unknown target: $target_name${NC}" >&2
    usage
    exit 1
  fi

  DESTINATIONS=$((DESTINATIONS + 1))
  echo -e "${CYAN}${target_name}${NC} -> $target_root"

  if [ "$DRY_RUN" -eq 0 ]; then
    mkdir -p "$target_root"
  fi

  for skill_dir in "${SKILL_DIRS[@]}"; do
    install_skill_to_dir "$skill_dir" "$target_root"
    TOTAL=$((TOTAL + 1))
  done

  echo ""
done

if [ "$DRY_RUN" -eq 1 ]; then
  echo -e "${YELLOW}Dry run complete. No files were changed.${NC}"
else
  echo -e "${GREEN}Done. Installed ${#SKILL_DIRS[@]} skills into $DESTINATIONS target directories.${NC}"
fi

echo ""
echo -e "${CYAN}4 workflows are ready:${NC}"
echo -e "  ${GREEN}想法到上线${NC}: idea-files -> agentic-engineering -> minimalism -> supply-chain-hygiene -> vibe-to-agentic"
echo -e "  ${BLUE}研究到发布${NC}: autoresearch -> llm-wiki -> output-evolution -> education-first"
echo -e "  ${YELLOW}反偏见决策${NC}: llm-simulator -> understanding-first -> system-prompt-learning"
echo -e "  ${CYAN}月度体检${NC}: meta-reflection -> understanding-first -> practice-environments -> education-first"
echo ""
echo -e "If your agent is already running, restart it or reload skills before testing."
