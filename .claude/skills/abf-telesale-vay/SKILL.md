---
name: abf-telesale-vay
description: Kịch bản gọi lại lead vay ABF: mở đầu dưới 15 giây theo nguồn (bình luận TikTok / form / inbox), 5 câu hỏi lọc, kết bằng một bước nhỏ có thời điểm, xử lý 'sao có số tôi' và 'đừng gọi nữa', nhịp chăm theo đường đi.
---

# abf-telesale-vay (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/LS-LoanSpecialist/LS-01-Atomic/L2-KienThucNghe/2026-11-09-telesale-goi-lai-lead-vay.md` (fallback: file local `LS-LoanSpecialist/LS-01-Atomic/L2-KienThucNghe/2026-11-09-telesale-goi-lai-lead-vay.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Input: nguồn lead + video/bình luận gốc + kênh VJ + điểm (nếu có). Lead không có nguồn do khách tự để lại → KHÔNG soạn kịch bản gọi, báo VJ.
4. Output: kịch bản cuộc gọi cá nhân hoá (mở đầu · 5 câu hỏi · câu tóm tắt · bước nhỏ) + 3 câu từ chối dễ gặp nhất lấy từ `/abf-xu-ly-tu-choi` + lịch chăm tiếp.
5. Xưng hô theo kênh VJ (đọc `VJ/VJ-[tên]/VJ-MOC/MOC-VJ-[tên].md` nếu cần giọng kênh).
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
