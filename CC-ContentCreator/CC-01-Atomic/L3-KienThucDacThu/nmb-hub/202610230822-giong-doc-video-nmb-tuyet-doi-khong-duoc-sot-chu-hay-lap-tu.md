---
name: "nmb-202610230822-giong-doc-video-nmb-tuyet-doi-khong-duoc-sot-chu-hay-lap-tu"
title: "Giọng đọc video NMB tuyệt đối không được sót chữ hay lặp từ"
type: concept
branch: CC
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "video-nmb", "giong-doc", "kiem-tra-loi"]
status: raw
created: 2026-10-23
source: "cuộc chat #15"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610230822-giong-doc-video-nmb-tuyet-doi-khong-duoc-sot-chu-hay-lap-tu.md"
nmb_ma_so: 137
confidence: medium
verified: false
related: ["[[CC-L3-MOC]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Giọng đọc video NMB tuyệt đối không được sót chữ hay lặp từ

**Câu hỏi dẫn tới:** Làm gì cũng được nhưng đừng đọc bị sót chữ hoặc lặp từ, đó là điều cấm kỵ vì sai là khách nhận ra AI ngay

Với video NMB (giọng omni:nmb-flow đọc từng cụm), sót chữ, thừa chữ hoặc lặp từ là lỗi cấm kỵ. Build ads_build5.py có cổng strict_cmp (nhận dạng whisper small rồi medium, số gộp thành NUM): cụm không đạt thì tạo lại tối đa 14 lần, vẫn lỗi thì dừng (exit 3) và phải viết lại câu bằng câu dài tự nhiên, tránh cụm ngắn và câu dồn nhiều số. Không đưa video còn cờ lỗi này cho anh duyệt hay đăng.

---
← [[CC-L3-MOC]] · nguồn: NMB Hub `chung/ky-nang/202610230822-giong-doc-video-nmb-tuyet-doi-khong-duoc-sot-chu-hay-lap-tu.md`
