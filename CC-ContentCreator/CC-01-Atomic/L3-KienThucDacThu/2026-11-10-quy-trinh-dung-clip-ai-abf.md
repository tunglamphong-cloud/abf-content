---
name: abf-quy-trinh-dung-clip-ai
type: framework
branch: CC
layer: L3
subtype: abf-specific-technique
topics: ["video", "clip AI", "case study", "kiến thức vay vốn", "hyperframes", "nmb-hub"]
status: raw
created: 2026-11-10
source: "Bài học video NMB Hub + kit bản tin 05-11 + skill HyperFrames — user duyệt 2026-11-10"
confidence: medium
verified: false
related: ["[[CC-L3-MOC]]", "[[2026-11-09-nmb-bai-hoc-video-content-ap-dung-abf]]", "[[_template-video-dong-b-kien-thuc]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-10
reuse_count: 0
evolution_log: ["2026-11-10: tạo từ pipeline đã duyệt; chưa có clip nào dựng xong"]
---

# Quy trình dựng clip AI 9:16 cho kênh ABF

> Note này làm gì: quy trình biến kịch bản đã duyệt thành clip TikTok/FB dọc cho 2 dòng nội dung.
> Agent thực thi bằng skill `.claude/skills/abf-video-clip/SKILL.md` (chi tiết lệnh, checklist QC).

## 2 dòng clip

| Dòng | Nguồn kịch bản | Hình chính | Công cụ mặc định |
|---|---|---|---|
| **A — Case Study** | `outputs/scripts/tiktok/casestudy_*`, `VJ/*/scripts` (`workflow-tags: case-study`), hồ sơ `4fcases/` | VJ talking-head + đồ hoạ ẩn danh (`broll_mode A`) hoặc B-roll thật (`B`) | HyperFrames |
| **B — Kiến thức kỹ thuật vay vốn** | [[_template-video-dong-b-kien-thuc]] (user đưa nội dung) | VJ nói + tài liệu / bảng tính / biểu đồ | HyperFrames, hoặc kit NMB khi chủ yếu chiếu tài liệu |

**Chọn công cụ theo từng clip:** có người quay thật → HyperFrames; chỉ giọng đọc trên tài liệu/trang web cuộn + highlight → kit Python kiểu NMB; lai → HyperFrames làm khung, nhúng đoạn kit.

## 10 bước

1. Khoá kịch bản → chia cảnh (`scenes.json`), kiểm ẩn danh, từ cấm, hotline.
2. Giọng VJ (file user đưa) → **Whisper soát sót / thừa / lặp** → lỗi thì dừng.
3. Mốc thời gian từ word timestamps → cắt cảnh đúng ranh câu, nhịp 2–4 giây.
4. Khung 0 là hook: mặt VJ hoặc câu hook to + phụ đề, giọng vào ngay.
5. Dựng hình (HyperFrames hoặc kit NMB); chữ trong dải 168–1330 px.
6. Phụ đề chữ số, từ khoá tô màu, ≤5 từ/dòng.
7. Tiếng: giọng −14 đến −15 LUFS, nhạc 110–128 BPM tự hạ, kết nhắc follow.
8. Xuất 60fps; clip 24fps (Flow) nội suy trước bằng ffmpeg `minterpolate`.
9. QC: ffprobe, LUFS, khung 0, Whisper lần 2, ẩn danh / hotline / từ cấm.
10. Hỏi trước khi lưu `outputs/video/<ma>/final/` (local, không lên GitHub).

## User cung cấp — agent không tự tạo

Giọng VJ · footage VJ · B-roll · form kênh (logo, font, màu, intro/outro, video mẫu) · nhạc (tuỳ) · clip AI tối đa 1–3 (tuỳ, hỏi trước khi tiêu credit).

## Hiệu Quả Ghi Nhận
| Clip | Dòng | Công cụ | View | Ghi chú |
|---|---|---|---|---|
| AB-KS-02 | A | HyperFrames | | Clip mẫu — chờ giọng + footage An Bình |

## Liên Kết
- [[CC-L3-MOC]] · [[2026-11-09-nmb-bai-hoc-video-content-ap-dung-abf]] · [[MOC-NMB-Hub]]
