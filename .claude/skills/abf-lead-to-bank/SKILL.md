---
name: abf-lead-to-bank
description: "Quy trình chuyển lead vay đạt chuẩn cho ngân hàng/cán bộ tín dụng đối tác theo mô hình CTV/đại lý hưởng hoa hồng: kiểm tra thỏa thuận NH, tiêu chí lead đạt, xin đồng ý riêng của khách (NĐ 13/2023), bàn giao theo mã lead, theo dõi và đối soát hoa hồng."
---

# abf-lead-to-bank (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-quy-trinh-chuyen-lead-ngan-hang.md` (fallback: file local `LS-LoanSpecialist/LS-01-Atomic/L1-Framework/2026-11-09-quy-trinh-chuyen-lead-ngan-hang.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Chặn cứng: chưa có thỏa thuận với NH đó HOẶC khách chưa đồng ý chuyển dữ liệu (nêu tên NH) → DỪNG, không soạn gói bàn giao.
4. Output: (a) tin nhắn xin đồng ý cá nhân hoá (tên NH, thông tin chia sẻ, công bố phí giới thiệu — chỉ ghi 'không tăng lãi/phí' nếu VJ xác nhận đúng) · (b) gói bàn giao tóm tắt 4F · (c) dòng sheet bàn giao · (d) lịch theo dõi 3 ngày / hằng tuần.
5. Đối soát tháng: VJ dán danh sách giải ngân từ NH → đối chiếu theo mã lead, liệt kê chênh lệch; hoa hồng tính theo quy định từng NH do VJ cung cấp (không tự đặt tỷ lệ).
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
