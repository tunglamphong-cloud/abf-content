---
name: abf-tiktok
description: Điểm vào chung để viết kịch bản TikTok ABF cho 4 kênh (An Bình, Khang, Thuỷ, Đạt). Chạy bootstrap CLAUDE.md (popup chọn kênh/workflow/format) → Phase 0 → load workflow từ vault. Dùng khi VJ muốn viết script mà chưa chỉ rõ workflow.
---

# ABF TikTok — Entry point

0. Có Brief từ `/abf-brainstorm` (`brief=<path>` trong args, hoặc vừa brainstorm xong) → làm theo [BRIEF-HANDOFF.md](BRIEF-HANDOFF.md). Chưa có nội dung → đề xuất `/abf-brainstorm` trước.
1. Đọc `CLAUDE.md` ở root vault (đã có trong context) và chạy đúng mục **⚡ BOOTSTRAP**: POPUP 1 → POPUP 2 (→ 2.5 nếu Khang/Đạt × Case Study). Shortcut rule: nếu prompt/args đã có đủ trường thì bỏ popup tương ứng.
2. Chạy **PHASE 0** (Bước 0 → 6) đúng như CLAUDE.md.
3. Bước 6 load workflow, sau đó mỗi khi workflow `GỌI: [skill-name]` → tra [REGISTRY.md](REGISTRY.md) để biết đọc file nào / làm theo mô tả inline nào.

Nếu workflow đã rõ, có thể dùng skill riêng: `/abf-news-viral`, `/abf-case-study`, `/abf-ktvv`, `/abf-abla`.

Args (tuỳ chọn): `$ARGUMENTS` — mô tả tự do kiểu "thuỷ case study đóng vai".
