---
name: "nmb-202610200909-quy-trinh-bao-cao-ads-sale"
title: "QUY TRÌNH: BÁO CÁO ADS & SALE"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "quy-trinh"]
status: raw
created: 2026-10-20
source: "AGSMem #30933 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/quy-trinh/202610200909-quy-trinh-bao-cao-ads-sale.md"
nmb_ma_so: 19
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# QUY TRÌNH: BÁO CÁO ADS & SALE

## Nguồn số liệu
- Chi phí quảng cáo: sheet "Ads M10 – nội bộ" và tài khoản quảng cáo Meta.
- Khách hàng: sheet riêng từng đội ("MKT 2026", "MKT ANC Oanh- Bảo Anh", "MKT ONSEN SKY GARDEN").

## Công cụ đang có
- Bot Telegram @BaoCaoAdsFB_bot (chạy trên Render): lệnh /baocao_ads, /baocao_sale, /baocao_tuan. Chỉ chạy theo lệnh, không tự gửi định kỳ khi chưa được xác nhận.
- Trang dashboard quản lý camp: nhập chi phí/lead/lead nét/hẹn/cọc theo ngày, tự chấm Tốt / Cần theo dõi / Báo động.
- Mong muốn: báo cáo sale đa dự án lúc 8h sáng; bản tổng gửi anh, phần từng đội gửi riêng cho đội đó.

## Cách viết báo cáo
- Tiếng Việt có dấu, danh sách dọc, ít icon.
- Mỗi báo cáo có nhận xét và hành động cụ thể.
- Số liệu tính bằng công thức/code, không để AI tự nhẩm.
- Đánh giá đội theo: chi phí, số lead, lead nét, cuộc hẹn, cọc. Mốc tham chiếu: 3–4 lead nét → 1 hẹn; 3–5 hẹn → chốt 1; CPL 350–400 nghìn.

## Phân quyền
- Sale chỉ được xem khách của nhóm mình. Không xem chi phí quảng cáo, không xem khách đội khác.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/quy-trinh/202610200909-quy-trinh-bao-cao-ads-sale.md`
