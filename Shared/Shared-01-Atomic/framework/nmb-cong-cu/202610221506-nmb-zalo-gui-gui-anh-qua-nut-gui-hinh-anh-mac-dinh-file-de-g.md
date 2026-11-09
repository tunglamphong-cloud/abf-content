---
name: "nmb-202610221506-nmb-zalo-gui-gui-anh-qua-nut-gui-hinh-anh-mac-dinh-file-de-g"
title: "nmb zalo gui gửi ảnh qua nút 'Gửi hình ảnh' (mặc định), --file để gửi dạng file"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "zalo", "nmb-zalo-gui", "app"]
status: raw
created: 2026-10-22
source: "cuộc chat #18"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610221506-nmb-zalo-gui-gui-anh-qua-nut-gui-hinh-anh-mac-dinh-file-de-g.md"
nmb_ma_so: 102
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# nmb zalo gui gửi ảnh qua nút 'Gửi hình ảnh' (mặc định), --file để gửi dạng file

**Câu hỏi dẫn tới:** Sửa app để Zalo gửi ảnh dạng hình

22/10/2026 sửa app/src/web.js (zaloSend tham số anh) và src/tools/zalo.js: ảnh jpg/png/webp/gif mặc định gửi qua nút [title^='Gửi hình ảnh'] thành album; thêm --file để gửi ảnh dạng file. Sao lưu *.bak-20261022. Sửa app/src phải khởi động lại App mới có hiệu lực. Bước đếm ảnh ban đầu không nhận ra album nên chờ đủ 5 phút; đã sửa thêm để thoát khi cuối khung chat có 'Đã gửi/Đã nhận'.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610221506-nmb-zalo-gui-gui-anh-qua-nut-gui-hinh-anh-mac-dinh-file-de-g.md`
