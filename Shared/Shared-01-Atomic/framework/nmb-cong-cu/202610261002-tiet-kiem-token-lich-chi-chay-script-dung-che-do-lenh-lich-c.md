---
name: "nmb-202610261002-tiet-kiem-token-lich-chi-chay-script-dung-che-do-lenh-lich-c"
title: "Tiết kiệm token: lịch chỉ chạy script dùng chế độ lenh, lịch cần suy nghĩ chạy chat riêng"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "lich", "token", "cong-cu"]
status: raw
created: 2026-10-26
source: "Kinh nghiệm đội NMB, 10/2026"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/kinh-nghiem-agent/202610261002-tiet-kiem-token-lich-chi-chay-script-dung-che-do-lenh-lich-c.md"
nmb_ma_so: 259
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Tiết kiệm token: lịch chỉ chạy script dùng chế độ lenh, lịch cần suy nghĩ chạy chat riêng

Gửi tin Zalo/Telegram tự nó không tốn token; tốn là khi lịch đánh thức agent. Việc chỉ chạy một script (gửi caption, đăng Reel bằng script, bật canh tin) đặt `nmb lich them … --che-do lenh --lenh "<lệnh>" --chat 0`: App tự chạy, báo Telegram dòng script in `BAO: …`, chỉ khi lỗi (mã thoát khác 0) mới gọi agent ở cuộc chat mới. Việc cần suy nghĩ dùng `tu-lam` nhưng đặt ở một cuộc chat riêng gọn — đặt vào cuộc chat dài thì mỗi lần chạy agent phải nạp lại cả lịch sử. Nhắc việc dùng `nhac` (không tốn token).

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/kinh-nghiem-agent/202610261002-tiet-kiem-token-lich-chi-chay-script-dung-che-do-lenh-lich-c.md`
