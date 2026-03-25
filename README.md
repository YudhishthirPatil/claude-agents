# Claude Agents

Custom AI agents for Claude Code that automate repetitive development tasks.

## Available Agents

| Command | What it does |
|---------|-------------|
| `/test-cases` | Scans any .NET project, identifies testable areas, generates and runs unit tests phase by phase |

## Installation

### 1. Clone this repo
```bash
git clone <your-repo-url>
cd claude-agents
```

### 2. Run the installer

**Windows:**
```
install.bat
```

**Mac / Linux:**
```bash
bash install.sh
```

That's it. Open Claude Code in any project and type `/test-cases`.

---

## How `/test-cases` Works

### Phase 1 — Project Scan
The agent scans your entire project and shows all testable areas as a numbered list.

```
TESTABLE AREAS DISCOVERED:
| #  | Area                  | Priority |
|----|-----------------------|----------|
| 1  | Authentication        | HIGH     |
| 2  | Patient Management    | HIGH     |
| 3  | Appointment Booking   | MEDIUM   |

Which area would you like to test first? Pick a number.
```

### Phase 2 — Test Plan
You pick an area. The agent reads all related code, traces every branch, and shows a detailed test plan.

```
TEST PLAN: Authentication (45 test cases)
| #  | Test Name                     | Expected |
|----|-------------------------------|----------|
| 1  | Login_EmptyEmail_Returns400   | 400      |
| 2  | Login_WrongPassword_Returns401| 401      |
| ...                                          |

Type 'go' to start writing tests.
```

### Phase 3 — Setup (first time only)
Creates the test project, installs packages (xUnit, Moq, FluentAssertions), adds references.

### Phase 4 — Write Tests
Writes all test files with proper Arrange-Act-Assert pattern.

### Phase 5 — Run & Report
Runs the tests and shows results. Auto-fixes test setup issues. Reports real bugs.

```
TEST RESULTS: Authentication
Passed: 45/45

Want to test another area?
```

### Phase 6 — Repeat
Pick the next area. The cycle continues until everything is covered.

---

## Key Features

- Works on **any .NET project** — auto-detects architecture
- **Phase-by-phase** — always asks before moving forward
- **You control the pace** — pick which areas to test, in what order
- **Auto-fixes** test setup issues, **reports** real source code bugs
- **Never modifies** your source code — only creates test files

## Requirements

- [Claude Code](https://claude.ai/claude-code) installed
- .NET SDK 8.0+

## Adding More Agents

Drop any `.md` file into this repo and re-run the installer. It will install all agents automatically.

## Manual Install (without script)

Copy `test-cases.md` to:
```
Windows:  C:\Users\<you>\.claude\commands\test-cases.md
Mac:      ~/.claude/commands/test-cases.md
Linux:    ~/.claude/commands/test-cases.md
```
