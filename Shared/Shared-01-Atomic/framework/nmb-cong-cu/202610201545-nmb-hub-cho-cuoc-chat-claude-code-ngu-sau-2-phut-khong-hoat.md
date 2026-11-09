---
name: "nmb-202610201545-nmb-hub-cho-cuoc-chat-claude-code-ngu-sau-2-phut-khong-hoat"
title: "NMB Hub cho cuộc chat Claude Code ngủ sau 2 phút không hoạt động, giao việc mới thì tự tỉnh và nhớ phiên cũ."
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "nmb-hub", "che-do-nghi", "claude-code"]
status: raw
created: 2026-10-20
source: "cuộc chat #12"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610201545-nmb-hub-cho-cuoc-chat-claude-code-ngu-sau-2-phut-khong-hoat-.md"
nmb_ma_so: 70
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# NMB Hub cho cuộc chat Claude Code ngủ sau 2 phút không hoạt động, giao việc mới thì tự tỉnh và nhớ phiên cũ.

**Câu hỏi dẫn tới:** Cuộc chat không làm gì thì đưa vào chế độ nghỉ, giao việc mới mới tỉnh; anh chốt 2 phút, đang chạy tốn token thì để chạy bình thường.

Cuộc chat Claude Code không ra chữ và không ai gõ trong 2 phút (cấu hình sleepIdleMin, mặc định 2, 0 = tắt; kiểm mỗi 20 giây) thì App tắt agent, danh sách hiện 'Đang nghỉ 💤'. Không cho nghỉ khi agent đang hỏi y/n hoặc chọn số; agent đang làm (còn ra chữ) thì chạy bình thường. Mỗi cuộc chat gắn mã phiên cố định (cột agent_session): lần đầu claude --session-id, các lần sau claude --resume nên tỉnh dậy vẫn nhớ việc cũ. Gõ việc vào ô nhập hoặc bấm Chạy là tự tỉnh. Chỉ áp dụng Claude Code, chưa áp dụng OpenCode.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610201545-nmb-hub-cho-cuoc-chat-claude-code-ngu-sau-2-phut-khong-hoat-.md`
