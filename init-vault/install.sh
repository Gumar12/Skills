#!/bin/bash
# Установка скилла init-vault для Claude Code
# Использование: curl -sL https://raw.githubusercontent.com/Gumar12/Skills/main/init-vault/install.sh | bash

set -e

SKILL_DIR=".claude/skills/init-vault"
REPO_URL="https://raw.githubusercontent.com/Gumar12/Skills/main/init-vault"

echo "Устанавливаю скилл init-vault..."

mkdir -p "$SKILL_DIR/templates"

# Основные файлы
curl -sL "$REPO_URL/SKILL.md" -o "$SKILL_DIR/SKILL.md"
curl -sL "$REPO_URL/claude-md-base.md" -o "$SKILL_DIR/claude-md-base.md"

# Шаблоны
for tpl in raw-thought insight thinking-by-topic thinking-by-question thinking-by-project thinking-mixed concept person practice; do
  curl -sL "$REPO_URL/templates/${tpl}.md" -o "$SKILL_DIR/templates/${tpl}.md"
done

echo ""
echo "Готово! Скилл установлен в $SKILL_DIR"
echo "Запусти Claude Code и введи /init-vault чтобы создать хранилище."
