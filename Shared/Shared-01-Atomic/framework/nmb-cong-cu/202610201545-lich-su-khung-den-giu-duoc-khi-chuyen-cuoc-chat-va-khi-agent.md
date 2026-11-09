---
name: "nmb-202610201545-lich-su-khung-den-giu-duoc-khi-chuyen-cuoc-chat-va-khi-agent"
title: "Lịch sử khung đen giữ được khi chuyển cuộc chat và khi agent đã dừng."
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "nmb-hub", "terminal", "lich-su"]
status: raw
created: 2026-10-20
source: "cuộc chat #12"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610201545-lich-su-khung-den-giu-duoc-khi-chuyen-cuoc-chat-va-khi-agent.md"
nmb_ma_so: 71
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Lịch sử khung đen giữ được khi chuyển cuộc chat và khi agent đã dừng.

**Câu hỏi dẫn tới:** Mỗi lần chuyển cuộc chat thì lịch sử làm việc không hiển thị; cần cuộn terminal xem lại lịch sử.

Lỗi cũ: chuyển cuộc chat chỉ phát lại ~200KB luồng thô (Claude Code vẽ lại liên tục nên chỉ còn ô nhập), cuộc chat đã dừng thì không phát gì. Đã sửa 20/10/2026: dựng lại từ màn hình ảo (có màu, 5000 dòng), lưu ra data/man-hinh/<id>.txt mỗi 5 giây và khi dừng; khung đen giữ 20000 dòng, chặn lệnh xoá phần cuộn ESC[3J, có nút '↓ Mới nhất', vuốt cuộn trên điện thoại, Shift + lăn chuột cuộn nhanh.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610201545-lich-su-khung-den-giu-duoc-khi-chuyen-cuoc-chat-va-khi-agent.md`
