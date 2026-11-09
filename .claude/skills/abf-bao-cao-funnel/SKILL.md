---
name: abf-bao-cao-funnel
description: "Báo cáo funnel ABF: video/ads → lead → lead đạt → cam kết → nộp NH → giải ngân → doanh thu (phí + hoa hồng) theo VJ, video, chiến dịch; CPL, doanh thu/lead, ROAS; quy tắc vận hành ads Facebook giữ từ NMB. Dùng cho báo cáo ngày/tuần/tháng."
---

# abf-bao-cao-funnel (wrapper → vault)

Tri thức nằm trong vault, KHÔNG chép lại ở đây để tránh lệch phiên bản.

1. Đọc TOÀN BỘ trước khi làm:
   - Note chính: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/CC-ContentCreator/CC-01-Atomic/L4-PDCA/2026-11-09-bao-cao-funnel-ads-lead-giai-ngan.md` (fallback: file local `CC-ContentCreator/CC-01-Atomic/L4-PDCA/2026-11-09-bao-cao-funnel-ads-lead-giai-ngan.md`)
   - Checklist pháp lý: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/Shared/Shared-01-Atomic/framework/2026-11-09-abf-checklist-phap-ly-can-luat-su.md` (fallback local) — mục nào ❓ thì KHÔNG tự kết luận "được làm", nhắc VJ hỏi luật sư.
2. Không chạy bootstrap POPUP / Phase 0 của CLAUDE.md (skill vận hành kinh doanh, không phải viết script).
3. Input: số liệu VJ dán/xuất từ Ads Manager + sheet CRM. Mọi phép tính làm bằng code (python/bash) — KHÔNG nhẩm.
4. Output: đúng mẫu báo cáo tuần trong note; mỗi báo cáo có nhận xét + 1–3 hành động.
5. Ngưỡng Tốt/Cần theo dõi/Báo động: CHƯA có số liệu ABF — chỉ so với kỳ trước; không dùng ngưỡng NMB (BĐS). Khi đủ 4 tuần → đề xuất ngưỡng để VJ chốt.
- KHÔNG ghi tên thật, CCCD, SĐT khách vào vault (repo public) — dữ liệu khách chỉ ở CRM/sheet riêng; dùng mã lead `ABF-YYMMDD-NN`.
- Trước khi lưu file/ghi đè: hỏi VJ (QUY TẮC 5). Output lưu local `outputs/` (QUY TẮC 6).

Args: `$ARGUMENTS`
