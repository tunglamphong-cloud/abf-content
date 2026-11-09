---
name: "nmb-202610261002-gui-ket-qua-qua-zalo-dang-anh-dung-nut-gui-hinh-anh"
title: "Gửi kết quả qua Zalo dạng ảnh, dùng nút \"Gửi hình ảnh\""
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "zalo", "cong-cu"]
status: raw
created: 2026-10-26
source: "Kinh nghiệm đội NMB, 10/2026"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/kinh-nghiem-agent/202610261002-gui-ket-qua-qua-zalo-dang-anh-dung-nut-gui-hinh-anh.md"
nmb_ma_so: 261
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Gửi kết quả qua Zalo dạng ảnh, dùng nút "Gửi hình ảnh"

Người nhận xem trên điện thoại nên gửi kết quả (phiếu tính giá, mặt bằng, báo cáo) thành ẢNH JPG, không gửi file PDF/xlsx phải tải về. Chụp từng phần nội dung thành ảnh (trình duyệt headless, scale 2, cắt khoảng trắng) rồi `nmb zalo gui "<tên chat>" a.jpg b.jpg --tin "…"`; lệnh mặc định đi nút "Gửi hình ảnh" nên ảnh hiện ngay (nhiều ảnh = album), thêm `--file` nếu muốn gửi dạng tệp. Video lớn đôi khi tải lên Zalo Web bị treo — khi đó đưa video lên khung Xem (`nmb view`) để người nhận tải trên điện thoại.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/kinh-nghiem-agent/202610261002-gui-ket-qua-qua-zalo-dang-anh-dung-nut-gui-hinh-anh.md`
