#!/usr/bin/env bash
# ============================================================
# Karpathy Skills — One-Command Installer
# https://github.com/LearnPrompt/andrej-karpathy-skills
# ============================================================

set -e

SKILLS_DIR="${HOME}/.clacky/skills"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo ""
echo -e "${BLUE}🧠 Karpathy Skills${NC}"
echo -e "${BLUE}==================${NC}"
echo ""

# Check if Clacky skills directory exists
if [ ! -d "$SKILLS_DIR" ]; then
  echo -e "${YELLOW}Creating Clacky skills directory at $SKILLS_DIR${NC}"
  mkdir -p "$SKILLS_DIR"
fi

# Install all skill folders
INSTALLED=0

for skill_dir in "$REPO_DIR"/karpathy-*/; do
  skill_name=$(basename "$skill_dir")

  if [ ! -f "$skill_dir/SKILL.md" ]; then
    continue
  fi

  target="$SKILLS_DIR/$skill_name"

  if [ -d "$target" ]; then
    echo -e "  ⟳  ${YELLOW}Updating${NC}  $skill_name"
    rm -rf "$target"
  else
    echo -e "  ✓  ${GREEN}Installing${NC} $skill_name"
  fi

  cp -r "$skill_dir" "$target"
  INSTALLED=$((INSTALLED + 1))
done

echo ""
echo -e "${GREEN}✅ Done! $INSTALLED skills installed to $SKILLS_DIR${NC}"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${CYAN}  📋 4 条工作流已就绪 — 触发入口 Skill 即可加载整条链路${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  🚀 ${GREEN}想法→上线${NC}（开发者）"
echo -e "     入口：idea-files → agentic → minimalism → supply-chain → vibe-to-agentic"
echo ""
echo -e "  📖 ${BLUE}研究→发布${NC}（内容创作者）"
echo -e "     入口：autoresearch → llm-wiki → output-evolution → education-first"
echo ""
echo -e "  ⚖️  ${YELLOW}反偏见决策${NC}（任何重要判断）"
echo -e "     入口：llm-simulator → understanding-first → system-prompt-learning"
echo ""
echo -e "  🪞 ${CYAN}月度体检${NC}（职场人）"
echo -e "     入口：meta-reflection → understanding-first → practice-environments → education-first"
echo ""
echo -e "不知道从哪开始？试试："
echo -e "  ${BLUE}用 karpathy 方法帮我做这件事${NC}"
echo ""
