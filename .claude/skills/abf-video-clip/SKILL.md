---
name: abf-video-clip
description: Dựng clip dọc 9:16 cho kênh TikTok/FB ABF từ kịch bản đã duyệt — dòng A Case Study (từ VJ/*/scripts, outputs/scripts/tiktok/casestudy_*) và dòng B Kiến thức kỹ thuật vay vốn. Chọn công cụ theo từng clip (HyperFrames hoặc kit Python kiểu NMB), giọng VJ do user đưa, bắt buộc soát Whisper, xuất 60fps vào outputs/video/.
---

# ABF Video Clip — dựng clip AI 9:16 cho kênh vay vốn

> Duyệt 2026-11-10. Note vault: `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/2026-11-10-quy-trinh-dung-clip-ai-abf.md`. Nguồn bài học: `CC-…/L3-KienThucDacThu/2026-11-09-nmb-bai-hoc-video-content-ap-dung-abf.md`, kit NMB `~/NMB-Hub-viec/ban-tin-0511/`, skill `hyperframes`, `media-use`, `motion-design`.

## 0. Luật cứng (không có ngoại lệ)

1. **Không tự tạo B-roll, form kênh, giọng VJ.** Thiếu thứ gì → liệt kê đúng file cần, dừng chờ user.
2. **Ẩn danh:** không tên thật KH, CCCD, SĐT, tên công ty, địa danh cụ thể, tên ngân hàng (nếu kịch bản đã ẩn), ảnh thật nhận diện được tài sản. Kiểm cả lời đọc, phụ đề, hình.
3. **Giọng đọc không sót / thừa / lặp chữ** — soát bằng faster-whisper trước khi dựng và sau khi trộn tiếng. Lỗi → báo user, không dựng tiếp trên file lỗi.
4. **Hotline:** clip kiến thức / thương hiệu cá nhân (dòng B, KTVV, ABLA, News) không hotline ở hình, phụ đề, caption — *luật đang chờ VJ chốt, mặc định: không*. Case Study theo CTA trong kịch bản ("inbox …").
5. **Từ cấm TikTok:** chạy `2026-04-18-tu-cam-tiktok-tai-chinh-do-manh.md` trên phụ đề + caption.
6. **Quy tắc 5 + 6 CLAUDE.md:** mọi output ở `outputs/video/<ma>/` (local, gitignore). Hỏi trước khi lưu bản cuối / ghi đè; sửa bản đã giao thì xuất `_v2`.
7. Clip AI (Flow/Veo/HeyGen…) **tối đa 1–3 clip/video**, hỏi user trước khi tiêu credit.

## 1. Chọn công cụ cho từng clip

| Clip có… | Công cụ | Vì sao |
|---|---|---|
| Footage VJ quay thật (talking-head) + thẻ đồ hoạ, phụ đề, biểu đồ, chuỗi chữ chạy | **HyperFrames** (`npx hyperframes`, 1080×1920, `--fps 60`) | Khối dựng sẵn trong registry (captions, kinetic type, chart, transitions), xem trước trong app, xuất ổn định từng khung |
| Không có người; dẫn bằng giọng trên tài liệu / trang web cuộn + highlight (văn bản luật, biểu lãi suất, bài báo, hợp đồng mẫu) | **Kit Python kiểu NMB** (`config.json → build.py → render.py → audio.py`, gốc ở `~/NMB-Hub-viec/ban-tin-0511/`) | Đã chạy được trên máy (Bản tin 05-11), mạnh ở cuộn trang + highlight đúng lúc đọc |
| Lai (VJ nói + đoạn chiếu tài liệu) | HyperFrames làm khung chính, đoạn tài liệu render bằng kit rồi nhúng như `<video>` | Giữ một timeline, một bản trộn tiếng |

Ghi lựa chọn vào `outputs/video/<ma>/PLAN.md` trước khi dựng.

## 2. Đầu vào user cung cấp (checklist gửi user)

Thư mục `outputs/video/<ma>/input/`:

| File | Bắt buộc | Ghi chú |
|---|---|---|
| `voice.wav` (hoặc `.mp3`) — giọng VJ đọc đúng kịch bản đã chốt | ✅ | Hoặc: file mẫu giọng + công cụ TTS/nhân bản user chỉ định (Vbee / OmniVoice) |
| `vj/*.mp4` — footage VJ (talking-head) | ✅ nếu format talking-head | Dọc 9:16 hoặc ngang để crop; ghi rõ đoạn nào khớp câu nào nếu quay nhiều take |
| `broll/*` — B-roll | tuỳ kịch bản | Không chứa ảnh nhận diện tài sản / KH |
| `form/` — form mẫu kênh: logo PNG nền trong, font, mã màu, intro/outro, 1–2 video mẫu đã đăng | ✅ | Một lần cho mỗi kênh, dùng lại → lưu bản chuẩn ở `outputs/video/_brand/<kenh>/` |
| `music/*` | tuỳ | Không có → dùng nhạc miễn phí bản quyền 110–128 BPM qua `media-use`, hỏi trước |
| Clip AI 1–3 cái | tuỳ | User tạo trên Flow, hoặc user duyệt để agent tạo |

## 3. Pipeline (cả 2 dòng)

1. **Khoá kịch bản** — đọc file script (`## Kịch bản` + bảng B-roll). Tách câu → `scenes.json`: `{id, text, kind: talk|graphic|broll|ai|doc, broll_ref, emphasis}`. Kiểm ẩn danh, từ cấm, hotline. Độ dài theo bảng VJ × format trong `tiktok-script-skill` (không dùng mốc 1–2 phút của NMB).
2. **Giọng** — `voice.*` của user → faster-whisper (small, rồi medium nếu nghi ngờ; `word_timestamps=True`) → so với kịch bản (số gộp về một dạng). Báo bảng lệch: sót / thừa / lặp / đọc sai. Lệch → user đọc lại hoặc sửa câu; không tự cắt ghép chữ.
3. **Timeline từ giọng** — mốc từng câu / cụm phụ đề lấy từ word timestamps; cắt cảnh đúng ranh câu; nhịp 2–4 giây có một thay đổi (chữ, punch-in, thẻ, B-roll).
4. **Khung đầu = HOOK** — t=0 đã có mặt VJ hoặc câu hook to đủ chữ + phụ đề; không đen, không logo, không mờ dần; giọng vào ngay.
5. **Dựng hình**
   - HyperFrames: `index.html` (root 1080×1920, `data-fps=60`) + một sub-composition mỗi cảnh; tìm khối trong registry trước khi tự viết (captions, kinetic type, bar/compare chart, lower third). Chữ và sản phẩm trong dải 168–1330 px; không chữ dưới thanh tương tác bên phải.
   - Kit NMB: `config.json` (segments, beats, scenes) → `prep.py` → `build.py` → `render.py frames …` để duyệt khung → `render.py video`.
6. **Phụ đề** — chữ số (giọng đọc chữ), từ khoá tô màu kênh, số tiền màu nhấn; tối đa ~5 từ/dòng khẳng định; chữ to tiếng Việt line-height ≥1,2, không `overflow:hidden` cắt dấu.
7. **Tiếng** — giọng to hơn nhạc, chuẩn −14 đến −15 LUFS; nhạc 110–128 BPM tự hạ khi có giọng; SFX whoosh/pop đúng nhịp cắt; kết: nhắc follow, đọc tốc độ thường, giữ hình ~3 giây.
8. **Xuất 60fps** — clip nguồn 24/30fps (Flow, điện thoại) nội suy trước: `ffmpeg -i in.mp4 -vf "minterpolate=fps=60:mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1" -g 60 out60.mp4` (lưu bản nội suy để dùng lại). HyperFrames: `npx hyperframes render --fps 60 --quality high -o …`.
9. **QC trước khi giao** — ffprobe 1080×1920, 60fps; LUFS; trích khung 0 (hook?); 6–8 khung giữa (phụ đề khớp câu?); Whisper lần 2 trên file cuối; checklist ẩn danh + hotline + từ cấm.
10. **Giao** — hỏi user trước khi lưu `outputs/video/<ma>/final/<ma>_v1.mp4` + `caption.md` (3 bản caption, hashtag kênh). Không đăng tự động lên TikTok (đăng tay, bật nhãn "Nội dung do AI tạo").

## 4. Dòng A — Case Study

- Nguồn: `outputs/scripts/tiktok/casestudy_*.md`, `VJ/VJ-*/scripts/**` có `workflow-tags: case-study`, hồ sơ `LS-…/L4-PDCA/4fcases/`.
- `broll_mode` trong frontmatter: **A** = chuyển sang đồ hoạ (không ảnh thật) → dựng thẻ đồ hoạ theo bảng B-roll của kịch bản; **B** = B-roll thật user đưa.
- Cảnh chuẩn: Hook (VJ + chữ số tiền to) → bối cảnh tài sản (đồ hoạ khối, không bản đồ/tên đường) → vướng mắc (chuỗi chữ chạy / so sánh 2 cột) → giải pháp (2–3 thẻ "Hướng 1/2") → kết quả hoặc "tập sau" → CTA theo kịch bản.

## 5. Dòng B — Kiến thức kỹ thuật vay vốn (chưa có kịch bản)

Template riêng: `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/_template-video-dong-b-kien-thuc.md` — copy sang `outputs/video/<ma>/script.md` rồi điền. Cấu trúc 6 khối:
1. Hook số tiền / tình huống cụ thể (≤10 từ)
2. Sai lầm phổ biến người vay hay mắc
3. Cơ chế ngân hàng thật sự xét (CIC, LTV, DTI, nguồn thu, định giá…) — chiếu tài liệu / biểu đồ
4. Ví dụ số cụ thể (bảng tính trả góp, so sánh 2 phương án)
5. Hành động người xem làm được ngay (3 ý)
6. Kết: follow kênh, không hotline

## 6. Cấu trúc thư mục output

```
outputs/video/
  _brand/<kenh>/        logo, font, màu, intro/outro chuẩn
  <ma>/                 vd AB-KS-02
    input/  PLAN.md  scenes.json  whisper.json  hf/ | kit/  final/
```
