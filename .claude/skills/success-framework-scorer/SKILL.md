---
name: success-framework-scorer
description: Chấm điểm 3 hook TikTok theo framework SUCCESS (Chip & Dan Heath), 6 tiêu chí 0/1, chỉ hook ≥4/6 được dùng. Gọi sau hook-writer.
---

# success-framework-scorer (wrapper → vault)

Nội dung skill nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ file skill gốc trước khi thực thi:
   - `https://raw.githubusercontent.com/gracenguyenai-boop/abf-vault/main/.agent/skills/success-framework-scorer.md`
   - Fallback nếu WebFetch lỗi: file local `.agent/skills/success-framework-scorer.md` trong vault.
2. Làm đúng theo file đó. Không tự diễn giải.
3. Input: 3 hook đã viết. Kiểm tra ≤10 từ TRƯỚC khi chấm.

Args: `$ARGUMENTS`
