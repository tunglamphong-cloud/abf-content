---
name: abf-tu-van-co-phi
description: "Gói tư vấn vay có phí ABF: phí = % số tiền giải ngân theo thỏa thuận với khách, chỉ thu khi giải ngân; song song hoa hồng giới thiệu NH trả theo quy định từng NH (phải công bố cho khách). Soạn phương án tư vấn, câu chốt, khung hợp đồng dịch vụ, phạm vi làm / không làm."
---

# abf-tu-van-co-phi (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-goi-tu-van-vay-co-phi.md` (fallback: file local `LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-goi-tu-van-vay-co-phi.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Input: tóm tắt hồ sơ (ẩn danh) + điểm từ `/abf-lead-scoring`. Mức % phí: hỏi VJ — agent KHÔNG tự đặt số.
4. Output: phương án chính + dự phòng (NH, sản phẩm, số tiền dự kiến, điểm nghẽn) · câu chốt · khung nội dung hợp đồng dịch vụ (đánh dấu 'BẢN NHÁP — cần luật sư duyệt') · checklist giấy tờ khách cần gửi.
5. Cấm trong mọi output: cam kết chắc duyệt, thu phí trước, 'làm đẹp' giấy tờ, giấu hoa hồng NH.
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
