---
name: abf-xu-ly-tu-choi
description: Kho xử lý từ chối của khách vay ABF (phí, tự làm được, bị NH từ chối, CIC, thu nhập tiền mặt, sợ lừa đảo, để suy nghĩ…) theo 3 nguyên tắc và 4 phần: lo thật · phản hồi đầu · câu hỏi đào sâu · câu chuyển bước. Dùng khi chuẩn bị gọi, luyện tập, hoặc bổ sung câu mới.
---

# abf-xu-ly-tu-choi (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/LS-LoanSpecialist/LS-01-Atomic/L2-KienThucNghe/2026-11-09-kho-xu-ly-tu-choi-khach-vay.md` (fallback: file local `LS-LoanSpecialist/LS-01-Atomic/L2-KienThucNghe/2026-11-09-kho-xu-ly-tu-choi-khach-vay.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Chế độ TRA CỨU: VJ dán câu khách nói → trả về mục khớp nhất (4 phần) + 1 biến thể theo giọng kênh.
4. Chế độ BỔ SUNG: câu mới từ cuộc gọi thật → soạn đủ 4 phần, hỏi VJ trước khi thêm vào note (QUY TẮC 5).
5. Chế độ LUYỆN TẬP: agent đóng vai khách, đưa 5 câu từ chối ngẫu nhiên, chấm câu trả lời theo 3 nguyên tắc.
6. Cấm: 'chắc chắn duyệt', 'nợ xấu vẫn vay được', 'lãi thấp nhất'.
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
