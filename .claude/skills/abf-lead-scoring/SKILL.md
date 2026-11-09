---
name: abf-lead-scoring
description: Chấm điểm 0–100 và phân loại lead vay ABF (Venn A/B/C/KEY + 5 câu hỏi lọc) → chọn đường Chuyển NH / Gói phí / Nuôi tiếp / Loại, cập nhật pipeline 8 giai đoạn. Dùng khi có lead mới (bình luận 'tư vấn', form, inbox) hoặc review pipeline.
---

# abf-lead-scoring (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-cham-diem-phan-loai-lead-vay.md` (fallback: file local `LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-cham-diem-phan-loai-lead-vay.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Input: thông tin lead VJ dán (ẩn danh). Thiếu câu nào trong Q1–Q5 → hỏi bằng AskUserQuestion, không đoán.
4. Output bảng: điểm từng tiêu chí (tính bằng phép cộng rõ ràng) · tổng · Venn · cờ đỏ · đường đi · skill tiếp theo (`/abf-lead-to-bank`, `/abf-tu-van-co-phi`, `/abf-telesale-vay`) · việc tiếp theo + hạn.
5. Nhiều lead → bảng xếp theo điểm giảm dần.
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
