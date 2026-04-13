# Установка скилла init-vault для Claude Code
# Использование: irm https://raw.githubusercontent.com/Gumar12/Skills/main/init-vault/install.ps1 | iex

$ErrorActionPreference = "Stop"

$SkillDir = ".claude\skills\init-vault"
$RepoUrl = "https://raw.githubusercontent.com/Gumar12/Skills/main/init-vault"

Write-Host "Устанавливаю скилл init-vault..."

New-Item -ItemType Directory -Force -Path "$SkillDir\templates" | Out-Null

# Основные файлы
Invoke-WebRequest -Uri "$RepoUrl/SKILL.md" -OutFile "$SkillDir\SKILL.md"
Invoke-WebRequest -Uri "$RepoUrl/claude-md-base.md" -OutFile "$SkillDir\claude-md-base.md"

# Шаблоны
$templates = @("raw-thought","insight","thinking-by-topic","thinking-by-question","thinking-by-project","thinking-mixed","concept","person","practice")
foreach ($tpl in $templates) {
    Invoke-WebRequest -Uri "$RepoUrl/templates/$tpl.md" -OutFile "$SkillDir\templates\$tpl.md"
}

Write-Host ""
Write-Host "Готово! Скилл установлен в $SkillDir"
Write-Host "Запусти Claude Code и введи /init-vault чтобы создать хранилище."
