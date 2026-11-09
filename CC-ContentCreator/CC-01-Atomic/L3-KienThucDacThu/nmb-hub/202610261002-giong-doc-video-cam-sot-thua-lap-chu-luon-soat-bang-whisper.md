---
name: "nmb-202610261002-giong-doc-video-cam-sot-thua-lap-chu-luon-soat-bang-whisper"
title: "Giọng đọc video cấm sót, thừa, lặp chữ — luôn soát bằng Whisper"
type: concept
branch: CC
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "video", "giong-doc"]
status: raw
created: 2026-10-26
source: "Kinh nghiệm đội NMB, 10/2026"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/kinh-nghiem-agent/202610261002-giong-doc-video-cam-sot-thua-lap-chu-luon-soat-bang-whisper.md"
nmb_ma_so: 250
confidence: medium
verified: false
related: ["[[CC-L3-MOC]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Giọng đọc video cấm sót, thừa, lặp chữ — luôn soát bằng Whisper

Khách nghe ra giọng AI ngay khi có chữ bị sót, thừa hoặc lặp. Sau khi tạo giọng, chép lời bằng faster-whisper (small rồi medium; số gộp về một dạng khi so) và so với kịch bản. Cụm lỗi thì tạo lại; tạo lại nhiều lần vẫn lỗi thì viết lại câu: dùng câu dài tự nhiên, tránh cụm 1–3 chữ đứng riêng và câu dồn nhiều con số. Chữ đồng âm Whisper hay nghe nhầm ("chỉ"/"trị") thì nghe lại bằng mô hình lớn hơn trước khi kết luận. Không đưa bản lỗi đi duyệt.

---
← [[CC-L3-MOC]] · nguồn: NMB Hub `chung/kinh-nghiem-agent/202610261002-giong-doc-video-cam-sot-thua-lap-chu-luon-soat-bang-whisper.md`
