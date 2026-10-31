---
name: abf-case-study
description: Viết kịch bản TikTok Case Study từ hồ sơ vay vốn thực tế (sổ, CIC, 4F, giải ngân) cho kênh ABF. Chạy bootstrap + INPUT CHECK + Phase 0 rồi workflow TikTok-case-study 10 phase.
---

# Case Study — TikTok workflow ABF

**WORKFLOW = Case Study** (đã chốt, KHÔNG hỏi lại trong POPUP 1).
Kênh hợp lệ: An Bình · Khang · Thuỷ · Đạt (Khang/Đạt có POPUP 2.5). Áp dụng INPUT GUIDE + bảng INPUT CHECK của CLAUDE.md khi VJ dán hồ sơ.

## Chạy theo thứ tự

0. **Brief từ brainstorm** — nếu `$ARGUMENTS` có `brief=<path>` hoặc vừa chạy xong `/abf-brainstorm` → làm theo [BRIEF-HANDOFF.md](../abf-tiktok/BRIEF-HANDOFF.md) (bỏ popup đã có, dùng lại Phase 0 Bước 1/3/4/5). Chưa có nội dung → đề xuất `/abf-brainstorm` trước.
1. **Bootstrap (CLAUDE.md)** — chỉ hỏi phần còn thiếu: Kênh (nếu chưa có trong `$ARGUMENTS`) → POPUP 2 (Nội dung + Format theo bảng format của CLAUDE.md cho Case Study) → POPUP 2.5 nếu cần.
2. **PHASE 0** của CLAUDE.md — Bước 0 → 6, không bỏ bước (Bước 2.5 + 2.6 bắt buộc).
3. **Load workflow** (đọc TOÀN BỘ trước khi làm):
   - `https://raw.githubusercontent.com/tunglamphong-cloud/abf-vault/main/.agent/workflows/TikTok-case-study-workflow.md`
   - Fallback nếu WebFetch lỗi: file local `.agent/workflows/TikTok-case-study-workflow.md` trong vault.
4. Bỏ Phase 0 của workflow (CLAUDE Phase 0 đã thay thế) — **NGOẠI LỆ:** vẫn hỏi câu xác nhận B-roll của Phase 0 workflow (`broll_mode` A/B) trước Phase 1 vì Phase 7 phụ thuộc vào nó, chạy Phase 1 → N, báo cáo sau mỗi Phase.
5. Mỗi `GỌI: [skill]` → tra [REGISTRY.md](../abf-tiktok/REGISTRY.md). Skill loại FILE → đọc file trước khi thực thi (`/tiktok-script-skill`, `/success-framework-scorer`).
6. Trước khi lưu: hỏi VJ (QUY TẮC 5). Lưu local `outputs/scripts/tiktok/<filename>.md` (QUY TẮC 6).

Args: `$ARGUMENTS`
