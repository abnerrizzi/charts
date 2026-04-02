---
name: Step-by-Step Git Commit
description: Pattern for committing changes after each discrete task step to maintain a granular version history.
---

# Step-by-Step Git Commit Skill

This skill ensures that every atomic unit of work performed during a task is committed to the repository. This provides a clear, traceable history of changes and makes debugging or rollbacks easier.

## Requirements
1. **Commit Timing**: Commit after every meaningful, functional change or completed step within a larger task.
2. **Commit Message Format**: Follow [Conventional Commits](https://www.conventionalcommits.org/).
   - `feat: [description]`
   - `fix: [description]`
   - `docs: [description]`
   - `style: [description]`
   - `refactor: [description]`
   - `test: [description]`
   - `chore: [description]`
3. **Commit Message Length**: STRICT LIMIT of 50 characters for the first line.
4. **Scope**: Keep changes grouped by their functional impact.

## Workflow
1. Complete a specific atomic task (e.g., adding a template, fixing a lint error, or updating values).
2. Stage the changes.
3. Commit with a concise message (under 50 chars).
4. Proceed to the next step.

## Example Messages
- `feat: add gsa ingress template`
- `fix: correct pvc name in pg-gvm statefulset`
- `chore: update chart version to 0.1.5`
- `docs: add instructions for git-auto-commit skill`
