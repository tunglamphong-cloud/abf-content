---
name: abf-brainstorm
description: Brainstorm trước khi làm content ABF — define khái niệm, research internet, hỏi VJ đúng 10 câu/session theo framework (5W1H, 5WHY, PESTEL, Stakeholder, Six Hats, Steelman, Inversion, STEPPS/3Us) để ra bản đồ ý, quan điểm và angle. Dùng khi VJ có chủ đề nhưng chưa rõ nói gì, nói với ai, đứng về phía nào.
---

# content-brainstorm (wrapper → vault)

Nội dung skill nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ file skill gốc trước khi thực thi:
   - `https://raw.githubusercontent.com/gracenguyenai-boop/abf-vault/main/.agent/skills/content-brainstorm.md`
   - Fallback nếu WebFetch lỗi / chưa push lên GitHub: file local `.agent/skills/content-brainstorm.md` trong vault.
2. Skill này KHÔNG chạy bootstrap POPUP 1/2 + Phase 0 đầy đủ của CLAUDE.md — chỉ chạy "Bước 0 — Khởi động rút gọn" trong file skill.
3. Làm đúng theo file đó: Bước 0 → 1 (research) → 2 (Concept Card) → 3 (đúng 10 câu, mỗi câu 1 AskUserQuestion) → 4 (Brainstorm Brief) → 5 (checkpoint + bàn giao).
4. Brief xong mà VJ muốn viết script → chuyển sang `/abf-tiktok` (hoặc `/abf-news-viral`, `/abf-ktvv`, `/abf-case-study`, `/abf-abla`) với Brief làm `INPUT`.

Args: `$ARGUMENTS` — chủ đề tự do, có thể kèm kênh/loại content, VD "lãi suất thả nổi — kênh An Bình".
