# global-claude — Cài Claude Code ABF trên máy mới

Repo này chứa đủ để dùng ABF trên máy khác:

| Thành phần | Vị trí trong repo | Phạm vi |
|---|---|---|
| CLAUDE.md (luật tối cao) | `CLAUDE.md` | Tự load khi mở folder vault |
| Skills ABF (abf-tiktok, abf-case-study, …) | `.claude/skills/` | Tự load khi mở folder vault |
| Workflows + rules + skill gốc | `.agent/` | Fetch qua raw URL |
| Skill global `markitdown` | `global-claude/skills/markitdown/` | Copy vào `~/.claude/skills/` |
| Settings global | `global-claude/settings.json` | Copy vào `~/.claude/settings.json` |

## Cài đặt

**Windows (PowerShell):**
```powershell
git clone https://github.com/tunglamphong-cloud/abf-vault.git "$HOME\Downloads\ABF-Vault"
powershell -ExecutionPolicy Bypass -File "$HOME\Downloads\ABF-Vault\global-claude\install.ps1"
```

**macOS / Linux:**
```bash
git clone https://github.com/tunglamphong-cloud/abf-vault.git ~/Downloads/ABF-Vault
bash ~/Downloads/ABF-Vault/global-claude/install.sh
```

Sau đó mở Claude Code trong folder `ABF-Vault`.

Script cài sẽ:
1. Copy `global-claude/skills/*` và `.claude/skills/*` vào `~/.claude/skills/` (dùng được skill ABF ở mọi folder).
2. Copy `settings.json` vào `~/.claude/` nếu máy chưa có (có rồi thì giữ nguyên, không ghi đè).

## Lưu ý

- `markitdown` cần cài Python + `pip install "markitdown[all]"`. Đường dẫn exe trong `SKILL.md` là của máy gốc — sửa lại nếu khác.
- Cập nhật vault: chạy `./sync.sh` (pull → commit → push).
- `outputs/` không đẩy lên GitHub (Quy tắc 6).
