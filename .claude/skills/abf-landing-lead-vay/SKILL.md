---
name: abf-landing-lead-vay
description: "Dựng/sửa landing page thu lead vay cho kênh VJ ABF: cấu trúc 6 khối, form hồ sơ vay, 2 ô đồng ý tách riêng (tư vấn / chia sẻ NH) không tick sẵn, form server-side → Telegram/Sheet, Meta/TikTok Pixel không gửi PII. Kỹ thuật lấy từ NMB taoweb."
---

# abf-landing-lead-vay (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-landing-page-thu-lead-vay.md` (fallback: file local `Shared/Shared-01-Atomic/framework/2026-11-09-landing-page-thu-lead-vay.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Đọc thêm phần kỹ thuật NMB: `Shared/Shared-01-Atomic/framework/nmb-marketing/202610200909-lead-va-tracking.md` và `framework/nmb-cong-cu/202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu.md` (bỏ phần BĐS).
4. Làm trong thư mục dự án web riêng (không trong vault). Secret chỉ ở env server-side; không commit token. Sửa trên nhánh nháp → bản preview → VJ duyệt mới lên chính.
5. Nội dung trang Chính sách dữ liệu và câu chữ 2 ô đồng ý: đánh dấu 'cần luật sư duyệt'. Test bằng dữ liệu giả.
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
