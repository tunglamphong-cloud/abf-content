---
name: "nmb-202610261002-doc-ghi-google-sheet-hang-loat-tai-xlsx-qua-trinh-duyet-tao"
title: "Đọc/ghi Google Sheet hàng loạt: tải xlsx qua trình duyệt, tạo Sheet mới bằng nhập xlsx"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "google-sheet", "cong-cu"]
status: raw
created: 2026-10-26
source: "Kinh nghiệm đội NMB, 10/2026"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/kinh-nghiem-agent/202610261002-doc-ghi-google-sheet-hang-loat-tai-xlsx-qua-trinh-duyet-tao-.md"
nmb_ma_so: 262
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Đọc/ghi Google Sheet hàng loạt: tải xlsx qua trình duyệt, tạo Sheet mới bằng nhập xlsx

Đọc nhiều sheet: dùng Chrome đã đăng nhập (`nmb chrome`) mở `docs.google.com/spreadsheets/d/<id>/export?format=xlsx` → file về thư mục Tải xuống → xử lý bằng python/openpyxl. Tạo Google Sheet mới từ xlsx: Sheets → Tệp › Nhập → mở thẳng trang picker, tab "Tải lên", tải file (file phải nằm trong thư mục làm việc) → mở xlsx trên Drive → Tệp › "Lưu dưới dạng Google Trang tính". File lớn (trên khoảng 5 MB / 88 nghìn dòng) làm treo trình duyệt — tách nhỏ trước.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/kinh-nghiem-agent/202610261002-doc-ghi-google-sheet-hang-loat-tai-xlsx-qua-trinh-duyet-tao-.md`
