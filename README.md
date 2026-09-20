# Input Evaluator & Engineering Prompt Coach 🎯

> **Zero-friction prompt coaching for AI coding agents (Claude Code, Oh My Pi, Cursor, Windsurf).**

Most prompt optimizers and evaluators interrupt your flow: they force you to run separate CLI tools (like Promptfoo), or block execution waiting for you to rewrite your prompt.

**Input Evaluator** is different. It acts as an ambient pre-flight coach:
1. **Never blocks execution:** The agent evaluates your input, shows you how it could be framed more effectively in 2 lines, and immediately gets to work.
2. **Trains your engineering intuition:** Teaches you to think in terms of **Target**, **Signal**, **Reproduction**, and **Acceptance Criteria**.
3. **Works cross-platform:** Compatible with **Oh My Pi (OMP)**, **Claude Code**, and any agent harness supporting Agent Skills or `CLAUDE.md`.

---

## ⚡ Quick Start

### 1. Automated Installation (OMP & Claude Code)

Run the included install script:

```bash
chmod +x install.sh && ./install.sh
```

This creates symlinks in:
- `~/.omp/agent/skills/input-evaluator` (Oh My Pi)
- `~/.claude/skills/input-evaluator` (Claude Code)

---

## 🛠️ Usage Patterns

### Pattern 1: Ambient Coaching (Recommended)
Add this snippet to your project's `CLAUDE.md`, `AGENTS.md`, or your global agent system instructions:

```markdown
## Pre-flight Input Coaching Protocol
Before executing any engineering request:
1. Briefly evaluate whether the input specifies: (a) target module/file, (b) logs/error trace, (c) reproduction steps, (d) acceptance criteria.
2. If any are missing, prepend the response with a 2-line non-blocking coaching callout:
   > 💡 **Инженерный ввод:** [Чего не хватило для идеального контекста].
3. Seamlessly proceed with execution immediately based on workspace inspection and sensible defaults. Never block.
```

Whenever you submit a prompt like:
> *«Почини авторизацию в панели»*

The agent responds:
> 💡 **Инженерный ввод:** Для точечного фикса помогло бы указать: точный модуль (`src/app/api/auth`), текст ошибки из консоли и шаги воспроизведения.
>
> *Приступаю к выполнению:* сканирую файлы в `src/app/api/auth` и проверяю логи...

### Pattern 2: Interactive Session Mode
Ask the agent to enable coaching inside an active session:
```text
/input-evaluator on
# или: «включи режим коучинга промптов»
```

### Pattern 3: One-shot Prompt Audit
Audit and improve a complex prompt before running a heavy refactoring task:
```text
/input-evaluator "Отрефактори все хуки состояния в пакете web"
```

---

## 📐 The 4 Pillars of Engineering Context

| Pillar | What It Solves |
| :--- | :--- |
| **1. Target / Seam** | Eliminates wide file scans across the repository. |
| **2. Signal / Evidence** | Eliminates hallucinated repros and guesswork. |
| **3. Trigger / Repro** | Pins the exact conditions under which failure occurs. |
| **4. Acceptance Gate** | Establishes a verifiable definition of "Done". |

---

## 📄 License

MIT © [Aleksandr Levchenko](https://github.com/ALevkas)
