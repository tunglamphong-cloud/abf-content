---
name: "nmb-202610261002-video-muot-xuat-60-khung-giay-clip-flow-24fps-phai-noi-suy-c"
title: "Video mượt: xuất 60 khung/giây, clip Flow 24fps phải nội suy, chuyển động theo thời gian t"
type: concept
branch: CC
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "video", "60fps", "ky-thuat"]
status: raw
created: 2026-10-26
source: "Kinh nghiệm đội NMB, 10/2026"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/kinh-nghiem-agent/202610261002-video-muot-xuat-60-khung-giay-clip-flow-24fps-phai-noi-suy-c.md"
nmb_ma_so: 255
confidence: medium
verified: false
related: ["[[CC-L3-MOC]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Video mượt: xuất 60 khung/giây, clip Flow 24fps phải nội suy, chuyển động theo thời gian t

Clip Google Flow là 24fps; ghép vào video 30fps sẽ lặp khung, xem bị khựng. Bản quay màn hình thường chỉ khoảng 13 khung thật mỗi giây. Cách làm đã kiểm chứng: xuất 60 khung/giây, nội suy từng clip nguồn bằng ffmpeg `minterpolate=fps=60:mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1` (mặt, miệng sạch; kiểu trộn khung `framerate` bị bóng đôi), lưu bản đã nội suy để dùng lại. Lớp chữ động vẽ bằng GSAP trên timeline dừng sẵn, mỗi khung tua tới đúng giây t nên không khựng. Các bộ dựng ban-tin, video, video-flow trong app đã mặc định 60fps; thư viện motion tự chọn theo nội dung ở app/skills/video/motion.

---
← [[CC-L3-MOC]] · nguồn: NMB Hub `chung/kinh-nghiem-agent/202610261002-video-muot-xuat-60-khung-giay-clip-flow-24fps-phai-noi-suy-c.md`
