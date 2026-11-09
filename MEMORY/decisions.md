# Memory — Decisions

> Các quyết định quan trọng đã đưa ra trong hệ thống.
> Agent đọc file này đầu mỗi session để hiểu context hiện tại.
> **Path:** `MEMORY/decisions.md`

## Format
```
[YYYY-MM-DD] [CATEGORY] [QUYẾT ĐỊNH]: [nội dung] — [lý do]
Category: SYSTEM / WORKFLOW / VAULT / VJ / CONTENT
```

## Log

[2026-05-20] [SYSTEM] Thiết kế vault theo 3 nhánh CC/LS/TD — Áp dụng ConanSchool framework cho ABF
[2026-05-20] [VAULT] Vault mới tạo tại ABF-Vault/ tách biệt khỏi ABF01-main 3/ — Tránh nhầm lẫn với vault cũ
[2026-05-20] [VAULT] MEMORY/ là folder session memory chính — Đọc đầu mỗi session
[2026-05-20] [VAULT] VJ profiles lưu tại VJ/VJ-[tên]/profile.md — Dễ search và update
[2026-05-20] [VAULT] Feed Loop ghi tại FEED-LOOP/ sau mỗi workflow run — Vòng lặp compound knowledge
[2026-10-30] [CONTENT] Bỏ chuẩn chung 500–700 từ cho mọi format: độ dài theo bảng VJ × format trong `tiktok-script-skill` L3 — Dữ liệu SocialLens ngách vay vốn: bài viral ngắn hơn trung vị (ABF top 300–330, Thuỷ #29 191 từ); chuẩn 600 của Huyền là ngách chứng khoán
[2026-10-30] [WORKFLOW] Phase 0 Bước 2.5 bắt buộc load benchmark SocialLens (`VJ/_benchmark-sociallens/`) theo VJ → `[BENCHMARK]` + `[BENCHMARK SAMPLES]` — Học từ mẫu có số liệu view/lưu thật
[2026-11-05] [SYSTEM] Đổi định danh từ NMB sang "Tùng Lâm Tài chính Việt Nam", bỏ code NMB cũ — gộp từ 9 ghi nhớ cá nhân trùng nhau trong NMB Hub
[2026-11-05] [CONTENT] Video làm xong gửi vào 2 nhóm Zalo: "ABF salecontent" và "Anbinh - Trao đổi SaleContent" — nguồn NMB Hub (ca-nhan/04-van-hanh)
[2026-11-09] [VAULT] Nhập tri thức NMB Hub vào vault (xem [[MOC-NMB-Hub]]); dự án BĐS, báo giá, quét SĐT Facebook để ở `_private/` (gitignore) — vault đồng bộ lên GitHub public, không được lộ bảng hàng nội bộ / dữ liệu khách
[2026-11-09] [SYSTEM] Mô hình doanh thu ABF: (a) hoa hồng giới thiệu khoản vay — CTV/đại lý NH, NH trả theo quy định từng NH; (b) phí tư vấn = % số tiền giải ngân theo thỏa thuận với khách, chỉ thu khi giải ngân — VJ xác nhận; pháp lý chưa có ý kiến luật sư
[2026-11-09] [WORKFLOW] Thêm 7 skill vận hành kinh doanh từ nền NMB Hub: abf-lead-scoring, abf-lead-to-bank, abf-tu-van-co-phi, abf-telesale-vay, abf-xu-ly-tu-choi, abf-landing-lead-vay, abf-bao-cao-funnel — xem [[2026-11-09-mapping-nmb-sang-abf]]
[2026-11-09] [SYSTEM] Không chuyển lead cho NH khi chưa có đồng ý riêng của khách (nêu tên NH); không dùng quét SĐT Facebook / cà masothue của NMB; luôn công bố hoa hồng NH cho khách — [[2026-11-09-abf-checklist-phap-ly-can-luat-su]]
[2026-11-09] [VAULT] Ẩn SĐT anh Mậu Bảo và ID tài khoản quảng cáo MSH trong 2 note nmb-marketing (đã lỡ push ở 9df0e36 — lịch sử git cũ vẫn còn bản gốc)
