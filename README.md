# Skills — скиллы для Claude Code

Коллекция скиллов для [Claude Code](https://claude.ai/claude-code).

## init-vault

Создаёт персональное хранилище знаний с нуля. Хранилище растёт вместе с владельцем — агент со временем всё лучше понимает, как пользователь мыслит.

### Что делает

1. Спрашивает кто вы, зачем хранилище, как вы думаете
2. Предлагает структуру папок под ваш профиль
3. Создаёт каркас: папки, шаблоны, CLAUDE.md с инструкциями для агента

### Ядро системы — три слоя понимания

| Слой | Папка | Назначение |
|------|-------|------------|
| Голос | `wiki/raw-thoughts/` | Ваши мысли дословно, без редактуры |
| Инсайты | `wiki/insights/` | Структурированные мысли с вашими цитатами |
| Эволюция | `wiki/thinking/` | Как меняется ваше понимание со временем |

### Установка

```bash
curl -sL https://raw.githubusercontent.com/Gumar12/Skills/master/init-vault/install.sh | bash
```

Или вручную:

```bash
git clone https://github.com/Gumar12/Skills.git /tmp/skills
mkdir -p .claude/skills
cp -r /tmp/skills/init-vault .claude/skills/init-vault
rm -rf /tmp/skills
```

### Использование

В Claude Code:

```
/init-vault
```

Агент задаст вопросы и создаст хранилище в текущей папке.

## Лицензия

MIT
