---
name: abf-ktvv
description: Viết kịch bản TikTok Kiến Thức Vay Vốn (KTVV) cho kênh An Bình. Chạy bootstrap + Phase 0 của CLAUDE.md rồi workflow KTVV 4 phase.
---

# Kiến Thức Vay Vốn — TikTok workflow ABF

**WORKFLOW = Kiến Thức Vay Vốn** (đã chốt, KHÔNG hỏi lại trong POPUP 1).
Kênh hợp lệ: CHỈ An Bình Vay Vốn (format: talking-head · tips-nhanh) — kênh khác → báo VJ và dừng.

## Chạy theo thứ tự

0. **Brief từ brainstorm** — nếu `$ARGUMENTS` có `brief=<path>` hoặc vừa chạy xong `/abf-brainstorm` → làm theo [BRIEF-HANDOFF.md](../abf-tiktok/BRIEF-HANDOFF.md) (bỏ popup đã có, dùng lại Phase 0 Bước 1/3/4/5). Chưa có nội dung → đề xuất `/abf-brainstorm` trước.
1. **Bootstrap (CLAUDE.md)** — chỉ hỏi phần còn thiếu: Kênh (nếu chưa có trong `$ARGUMENTS`) → POPUP 2 (Nội dung + Format theo bảng format của CLAUDE.md cho Kiến Thức Vay Vốn) → POPUP 2.5 nếu cần.
2. **PHASE 0** của CLAUDE.md — Bước 0 → 6, không bỏ bước (Bước 2.5 + 2.6 bắt buộc).
3. **Load workflow** (đọc TOÀN BỘ trước khi làm):
   - `https://raw.githubusercontent.com/tunglamphong-cloud/abf-vault/main/.agent/workflows/Tiktok_Kiến_Thức_Vay_Vốn_KTVV_Workflow.md`
   - Fallback nếu WebFetch lỗi: file local `.agent/workflows/Tiktok_Kiến_Thức_Vay_Vốn_KTVV_Workflow.md` trong vault.
4. Bỏ Phase 0 của workflow (CLAUDE Phase 0 đã thay thế), chạy Phase 1 → N, báo cáo sau mỗi Phase.
5. Mỗi `GỌI: [skill]` → tra [REGISTRY.md](../abf-tiktok/REGISTRY.md). Skill loại FILE → đọc file trước khi thực thi (`/tiktok-script-skill`, `/success-framework-scorer`).
6. Trước khi lưu: hỏi VJ (QUY TẮC 5). Lưu local `outputs/scripts/tiktok/<filename>.md` (QUY TẮC 6).

Args: `$ARGUMENTS`
