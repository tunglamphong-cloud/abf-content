---
name: "nmb-202610220147-gui-video-file-vao-nhom-zalo-nhanh-script-gui-mjs"
title: "Gửi video/file vào nhóm Zalo nhanh (nmb zalo gui)"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "zalo", "gui-file", "video"]
status: raw
created: 2026-10-22
source: "NMB Hub — tri thức dùng chung đội NMB"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610220147-gui-video-file-vao-nhom-zalo-nhanh-script-gui-mjs.md"
nmb_ma_so: 86
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Gửi video/file vào nhóm Zalo nhanh (nmb zalo gui)

Gửi file/video vào chat hoặc nhóm Zalo: dùng MỘT lệnh `nmb zalo gui "<tên chat đúng>" "<file1>" "<file2>"… --tin "lời nhắn"` (có từ 22/10/2026). Lệnh dùng trình duyệt của trợ lý Zalo (nick phụ), tự mở chat, kiểm tiêu đề, đính kèm, chờ tải xong, chụp ảnh xác nhận. Xem tên chat: `nmb zalo list`.

KHÔNG dùng script gui.mjs / Playwright tự viết và KHÔNG `nmb web close`: chúng mở nick phụ ở hồ sơ web-profile, Zalo Web chỉ cho một phiên mỗi nick nên trợ lý Zalo và trình duyệt kia đá nhau ra (22/10/2026 cả hai bị đăng xuất).

Nhóm anh Bảo gọi 'Legend maker' = 'Legend Makers Bứt Tốc 500 - 2026' (đã gửi 4 video NMB-07..10 ngày 22/10/2026). Nếu `nmb zalo status` báo chưa đăng nhập thì gửi ảnh QR trong kết quả bằng `nmb view` cho anh quét bằng nick phụ. Video gửi bản gốc, Zalo Web gửi được file 70MB.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610220147-gui-video-file-vao-nhom-zalo-nhanh-script-gui-mjs.md`
