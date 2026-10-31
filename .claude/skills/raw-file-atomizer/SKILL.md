---
name: raw-file-atomizer
description: Atomize file raw (PDF, audio, link, ảnh, text) thành atomic note đúng nhánh CC/LS/TD/Shared/VJ + type, theo template, cập nhật Sub-MOC. Dùng khi VJ thả file và muốn lưu vào vault / phân loại.
---

# raw-file-atomizer (wrapper → vault)

Nội dung skill nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ file skill gốc trước khi thực thi:
   - `https://raw.githubusercontent.com/gracenguyenai-boop/abf-vault/main/.agent/skills/raw-file-atomizer/SKILL.md`
   - Fallback nếu WebFetch lỗi: file local `.agent/skills/raw-file-atomizer/SKILL.md` trong vault.
2. Làm đúng theo file đó. Không tự diễn giải.
3. Khi skill gốc nhắc `references/*` hoặc `examples/*` → đọc trong `.agent/skills/raw-file-atomizer/references/` và `.../examples/`.
4. Skill này GHI vào vault → hỏi VJ trước khi tạo/ghi đè file (QUY TẮC 5).

Args: `$ARGUMENTS`
