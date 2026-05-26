<div align="center">

# 🧠 Karpathy-Inspired Skills

#### 从 Andrej Karpathy 三年公开分享中，提炼出 14 个每天能用的 AI 工作方法

[![License](https://img.shields.io/badge/License-MIT-3B82F6?style=for-the-badge)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-14-10B981?style=for-the-badge)](#-skills)
[![Workflows](https://img.shields.io/badge/Workflows-4-F59E0B?style=for-the-badge)](#-workflows)
[![AgentSkills](https://img.shields.io/badge/AgentSkills-Standard-8B5CF6?style=for-the-badge)](https://agentskills.io)
![Claude Code](https://img.shields.io/badge/Claude_Code-Skill-D97706?style=flat-square&logo=anthropic&logoColor=white)
![Codex](https://img.shields.io/badge/Codex-Skill-10B981?style=flat-square&logo=openai&logoColor=white)
![Clacky](https://img.shields.io/badge/Clacky-Skill-EC4899?style=flat-square)
![OpenClaw](https://img.shields.io/badge/OpenClaw-Skill-111827?style=flat-square)
![Hermes](https://img.shields.io/badge/Hermes-Skill-7C3AED?style=flat-square)
![OpenCode](https://img.shields.io/badge/OpenCode-Skill-3B82F6?style=flat-square)

</div>

不是语录摘抄，不是人生鸡汤导师。

是Karpathy反复在X上聊到的那些工作习惯，整理成 Agent 能直接照着执行的指南。

在我的视角，**他一直把复杂的东西拆到人能理解、能复现、能迭代。** 这 14 个 Skill 就是按这个思路来的，每个都有明确的触发场景、执行流程、验收标准。

和市面上其他项目不同——我常用的 [obra/superpowers](https://github.com/obra/superpowers) 里的 brainstorming 和 [garrytan/gstack](https://github.com/garrytan/gstack) 里的 office-hours，其他 Skills 使用频率基本为零。**这 14 个能组成 4 条完整工作流。**

---

## 📋 Skills

| 名字 | 一句话 | 来源 |
|------|--------|------|
| 🎯 **karpathy-methodology** | 不知道用哪个？从这里开始，它帮你选 | 总控路由 |
| ⚙️ **agentic-engineering** | 每轮只交付一个可 review 的增量变更，跑测试后再继续 | [X](https://x.com/karpathy/status/2015883857489522876) |
| 🔀 **vibe-to-agentic** | 先 vibe coding 出原型，再切 agentic 模式收尾上线 | [X](https://x.com/karpathy/status/2026731645169185220) |
| 🔬 **autoresearch** | 假设→实验→分析→下一轮，Agent 替你跑实验 | [X](https://x.com/karpathy/status/2030371219518931079) |
| 🎭 **llm-simulator** | 别问 AI 怎么想，让它模拟 5 个人替你吵架出主意 | [X](https://x.com/karpathy/status/2037921699824607591) |
| 📚 **llm-wiki** | 用 LLM 维护一个越用越值钱的 Markdown wiki | [Gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) |
| 🧊 **minimalism** | 每加一个依赖，就多一个出问题的点——能不加就不加 | [X](https://x.com/karpathy/status/2021694437152157847) |
| 🛡️ **supply-chain-hygiene** | 你知道 npm install 的包里有什么吗？大概率不知道 | [X](https://x.com/karpathy/status/2036487306585268612) |
| 🧠 **understanding-first** | AI 帮你写，但出了 bug 你得能读懂它在干嘛 | [X](https://x.com/karpathy/status/2049907410303865030) |
| 📝 **idea-files** | 先把想法写清楚，然后扔给不同 Agent 各自实现、互相对比 | [X](https://x.com/karpathy/status/2049903821095354523) |
| 📈 **output-evolution** | 别只发文字了，让 LLM 给你发 HTML 和幻灯片 | [X](https://x.com/karpathy/status/2053872850101285137) |
| 🎓 **education-first** | 把任何经验压缩成一个 nano project 教会别人 | [X](https://x.com/karpathy/status/1885026028428681698) |
| 🔁 **system-prompt-learning** | 踩坑 → 识别模式 → 写进 system prompt → 永不再犯 | [X](https://x.com/karpathy/status/1921368644069765486) |
| 🏋️ **practice-environments** | 给 Agent 一个能安全试错的沙盒环境 | [X](https://x.com/karpathy/status/1960803117689397543) |
| 🪞 **meta-reflection** | 每月复盘：哪些能力在退化，哪些在提升 | 综合多条 |

---

## 🔗 Workflows（4 条工作流）

建议触发时直接说「用 Karpathy『工作流名』工作流……」。只说「研究到发布」这类通用词，可能会被其他研究或内容 Skill 抢走。

| 工作流 | 链路 | 推荐触发语 | Codex | Hermes | OpenClaw | Claude Code |
|------|------|------------|-------|--------|----------|-------------|
| 🚀 **想法到上线** | idea-files → agentic-engineering → minimalism → supply-chain-hygiene → vibe-to-agentic | `用 Karpathy「想法到上线」工作流，把“AI 产品雷达”这个想法推进到可上线的最小版本。` | 通过 | 通过 | 通过（顺序 fresh session） | 通过（需显式 `/karpathy-*` 链路） |
| 📖 **研究到发布** | autoresearch → llm-wiki → output-evolution → education-first | `用 Karpathy「研究到发布」工作流，把“AI 浏览器 agent 的发展趋势”做成一篇可发布研究内容。` | 通过 | 通过（需 Karpathy 前缀） | 通过（顺序 fresh session） | 通过（需显式 `/karpathy-*` 链路） |
| ⚖️ **反偏见决策** | llm-simulator → understanding-first → system-prompt-learning | `用 Karpathy「反偏见决策」工作流，帮我判断要不要把这个 skill 默认安装到所有 agent。` | 通过 | 通过 | 通过（顺序 fresh session） | 通过（需显式 `/karpathy-*` 链路） |
| 🪞 **月度体检** | meta-reflection → understanding-first → practice-environments → education-first | `用 Karpathy「月度体检」工作流，帮我复盘这个月使用 AI 写代码和写内容的能力变化。` | 部分通过（缺少完整月度任务清单） | 超时 | 通过（含 methodology 路由） | 通过（需显式 `/karpathy-*` 链路） |

测试方式：每条 prompt 都用 `tmux` 新建一次全新会话。Codex 使用 `codex exec`，Hermes 使用 `hermes -z`，OpenClaw 使用 `openclaw agent`，Claude Code 使用 `claude -p --no-session-persistence`。测试时间：2026-05-26。

OpenClaw 安装、Skill 识别、Codex OAuth 登录和最小对话探针已通过：`openclaw agent --local --model openai/gpt-5.5` 能返回 `OK`。四条工作流用 `tmux` 顺序新建 session 重测通过；并发同时跑 4 条会触发 OpenClaw 内部 `CommandLaneTaskTimeoutError`。OpenClaw 会注入较大的 workspace + skill index，单条测试约 63k-86k tokens。

Claude Code 自然语言触发不稳定：只说「用 Karpathy『工作流名』工作流」时，曾出现链路配错和身份串台。显式写出 `/karpathy-idea-files /karpathy-agentic-engineering ...` 这类 Skill 链路后，4 条工作流均可在全新 session 中触发。

### 🚀 想法到上线（开发者）

```
idea-files → agentic-engineering → minimalism → supply-chain-hygiene → vibe-to-agentic
```

| 阶段 | Skill | 产出 |
|------|-------|------|
| 想清楚 | idea-files | 想法文件（背景/目标/约束） |
| 工程化 | agentic-engineering | 增量 diff + 测试 |
| 瘦身 | minimalism | 砍依赖、纯化架构 |
| 安全检查 | supply-chain-hygiene | 依赖审计报告 |
| 收尾 | vibe-to-agentic | 原型→生产 hardening |

### 📖 研究到发布（内容创作者）

```
autoresearch → llm-wiki → output-evolution → education-first
```

| 阶段 | Skill | 产出 |
|------|-------|------|
| 跑实验 | autoresearch | 实验结果 + 迭代日志 |
| 沉淀 | llm-wiki | 结构化知识页面 |
| 包装 | output-evolution | HTML / 幻灯片 / 报告 |
| 教学化 | education-first | nano project + 练习题 |

### ⚖️ 反偏见决策（任何人）

```
llm-simulator → understanding-first → system-prompt-learning
```

| 阶段 | Skill | 产出 |
|------|-------|------|
| 辩论 | llm-simulator | 多角色辩论记录 + 盲区清单 |
| 验证 | understanding-first | 假设分级 + 必须亲自看的部分 |
| 沉淀 | system-prompt-learning | 决策逻辑写成可复用规则 |

### 🪞 月度体检（职场人）

```
meta-reflection → understanding-first → practice-environments → education-first
```

| 阶段 | Skill | 产出 |
|------|-------|------|
| 审计 | meta-reflection | 能力萎缩 / 杠杆 / 练习清单 |
| 定位 | understanding-first | 识别理解力盲区 |
| 练习 | practice-environments | 给自己建练习环境 |
| 输出 | education-first | 把学到的写成教程 |

---

## ⚡ 触发工作流

| 工具 | 触发方式 |
|------|---------|
| **Hermes** | 使用 Bundled 功能，选择工作流入口 Skill，自动加载整条链路 |
| **Claude Code** | 显式写 Skill 链路，例如：`/karpathy-idea-files /karpathy-agentic-engineering /karpathy-minimalism /karpathy-supply-chain-hygiene /karpathy-vibe-to-agentic 用 Karpathy「想法到上线」工作流帮我…` |
| **Codex** | 对话开头说：`用 Karpathy「想法到上线」工作流帮我做这件事` |
| **OpenClaw / Clacky / OpenCode** | 直接 @ 对应 Skill，或说「用 Karpathy『想法到上线』工作流帮我做这件事」 |

---

## 📦 安装

默认只安装到 Codex / AgentSkills 目录：`~/.agents/skills`。不同 Agent 的 skills 目录不同，建议一个 Agent 一个 target 明确安装。

```bash
git clone https://github.com/LearnPrompt/andrej-karpathy-skills.git
cd andrej-karpathy-skills
bash install.sh
```

安装到指定工具：

```bash
bash install.sh --target codex
bash install.sh --target claude
bash install.sh --target openclaw
bash install.sh --target hermes
bash install.sh --target clacky
bash install.sh --target opencode
```

确实要一次性安装到所有常见目录时，再显式使用：

```bash
bash install.sh --target all
```

先预览会写入哪些目录：

```bash
bash install.sh --dry-run
```

支持的目标目录如下：

| 目标 | 安装目录 |
|------|----------|
| Codex / AgentSkills | `~/.agents/skills` |
| Codex native | `~/.codex/skills` |
| Claude Code | `~/.claude/skills` |
| OpenClaw | `~/.openclaw/skills` |
| Hermes | `~/.hermes/skills` |
| Clacky | `~/.clacky/skills` |
| OpenCode | `~/.config/opencode/skills` 和 `~/.opencode/skills` |

安装后如果 Agent 已经在运行，重启或 reload skills 后再测试。

或单独安装某个 Skill：

```
帮我安装这个 skill：https://github.com/LearnPrompt/andrej-karpathy-skills/tree/main/<skill-name>
```

---

## 🌟 关于

灵感来源：[multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)。

用 Grok 获取了 Karpathy 最近三年与 AI 相关的 X 帖子，拆成 14 个独立 Skill + 4 条工作流，每个都有「为什么需要」「适合/不适合」「来源推文」。

核心理念来自 Karpathy 2023-2026 年间的公开 X 帖子和 Gist，不代表 Karpathy 本人立场。

Karpathy 官宣加入 Anthropic 后，AI 教育项目 Eureka Labs 就锁推了。我不知道他后续还会不会继续发新东西，所以想把这段时间的方法论保留下来。

---

<div align="center">

[MIT License](./LICENSE) · 自由使用 / 修改 / 再分发

Inspired by [@karpathy](https://x.com/karpathy) · Built for [Clacky](https://openclacky.com)

</div>
