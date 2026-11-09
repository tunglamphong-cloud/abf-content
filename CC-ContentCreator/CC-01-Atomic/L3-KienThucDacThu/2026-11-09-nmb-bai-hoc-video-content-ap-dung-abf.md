---
name: abf-nmb-bai-hoc-video-content
type: framework
branch: CC
layer: L3
subtype: abf-specific-technique
topics: ["tiktok", "video", "hook", "giọng đọc", "đăng bài", "nmb-hub", "abf"]
status: raw
created: 2026-11-09
source: "Tổng hợp 26 note NMB Hub (kinh-nghiem-agent, ky-nang, quy-trinh) — số liệu kênh NMB 10/2026"
confidence: medium
verified: false
related: ["[[CC-L3-MOC]]", "[[MOC-NMB-Hub]]", "[[2026-04-18-tu-cam-tiktok-tai-chinh-do-manh]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: chắt lọc từ NMB Hub, chuyển ví dụ BĐS → vay vốn ABF"]
---

# Bài học video & content từ NMB Hub — áp dụng cho ABF

> **Note này làm gì:** gộp 26 note video/nội dung của đội NMB (ngách BĐS) thành một bộ luật dùng được cho 4 kênh TikTok vay vốn ABF. Mỗi luật có link về note gốc để tra chi tiết.
> **Độ tin cậy:** số liệu đo trên kênh NMB 10/2026, **chưa kiểm chứng trên kênh ABF** → `verified: false`. Ghi kết quả thật vào bảng Hiệu Quả Ghi Nhận ở cuối.
> **Ưu tiên khi mâu thuẫn:** luật ABF (`tiktok-script-skill`, `_RULE` từng kênh, CLAUDE.md) > note này.

---

## 1. Hook — 3 giây đầu

| Luật NMB | Áp dụng ABF (vay vốn) |
|---|---|
| Hook **số tiền / ví dụ cụ thể** đạt nhiều view nhất; tin nóng và tình huống/sai lầm đứng sau; vĩ mô, chấm điểm chỉ ~1/4–1/5 view | "Vay 1 tỷ, mỗi tháng trả bao nhiêu?" · "Lãi thả nổi, khoản 2 tỷ tăng thêm bao nhiêu?" · "3 sai lầm khiến hồ sơ vay bị từ chối" |
| Mỗi ngày 2 video → ít nhất 1 video kiểu số tiền/tình huống | Áp vào lịch sprint 34 pieces/7 ngày |
| Khung hình đầu đã là hook đủ chữ, giọng vào ngay, không mờ dần | Giữ HARD RULE ABF: câu hook ≤10 từ |
| Kênh thắng có địa danh, nhân vật, người thật | Case Study có tỉnh/huyện (đã ẩn danh KH) — khớp `4fcases/` |

Nguồn: [[202610261002-hook-an-view-so-tien-vi-du-cu-the-tin-nong-tinh-huong-vi-mo]] · [[202610200909-skill-nmb-video-flow-anh-bao-day-them-nhung-gi-khi-lam-video]]

## 2. Giọng đọc (TTS / giọng nhân bản)

- **Cấm sót, thừa, lặp chữ** — người xem nhận ra AI ngay. Sau khi tạo giọng, chép lời bằng Whisper (small → medium) so với kịch bản; lỗi thì tạo lại, vẫn lỗi thì viết lại câu dài tự nhiên, tránh cụm 1–3 chữ và câu dồn nhiều con số.
  → ABF: kịch bản có nhiều con số (lãi suất, LTV, kỳ hạn) — viết số bằng chữ và tách số ra nhiều câu.
- **Vbee:** viết câu liền, ít dấu phẩy, không xuống dòng (mỗi dấu phẩy là một chỗ ngắt; mỗi lần xuống dòng nghỉ ~0,9 giây). Tốc độ 1,05x; giọng to hơn nhạc, khoảng −14 LUFS.
- Số viết bằng chữ ("hai tỷ tám"); tên riêng khó đọc thì phiên âm.

Nguồn: [[202610261002-giong-doc-video-cam-sot-thua-lap-chu-luon-soat-bang-whisper]] · [[202610230822-giong-doc-video-nmb-tuyet-doi-khong-duoc-sot-chu-hay-lap-tu]] · [[202610240909-kich-ban-dua-vao-vbee-viet-cau-lien-it-dau-phay-khong-xuong]] · [[202610200909-quy-trinh-lam-video]]

## 3. Nhịp & âm thanh

- Nhạc sôi động 110–128 BPM, có đoạn "bùng" trong 3–5 giây đầu, tự hạ khi có giọng; cắt cảnh khớp beat. Âm lượng chuẩn khoảng −15 LUFS.
- Không kéo dài: bản NMB được duyệt dài 1:37. Cảnh liệt kê hiện từng mục đúng lúc nói. Không tự cắt câu làm mất chữ.
  → ABF: độ dài theo bảng VJ × format trong `tiktok-script-skill` (không dùng mốc 1–2 phút của NMB).
- Kết video: đọc tốc độ thường, nhắc follow, giữ hình khoảng 3 giây để người xem kịp bấm.

Nguồn: [[202610261002-nhip-video-nhac-soi-dong-110-128-bpm-giong-nhanh-mo-dau-la-h]] · [[202610230822-nhip-video-nmb-nhanh-hap-dan-khong-keo-dai-khong-nhat-thiet]] · [[202610230822-doan-ket-video-nmb-phai-nhan-manh-follow-kenh-va-doc-du-cham]]

## 4. Hình ảnh & dẫn chứng

- Hình khớp đúng câu nói; B-roll có người phải là người Việt, đúng đối tượng (ABF: chủ hộ kinh doanh, gia đình vay mua nhà — xem [[2026-05-23-chan-dung-khach-hang-muc-tieu-abf]]).
- Không lặp B-roll cũ. Stock chỉ dùng cho vài cảnh.
- Dẫn chứng lấy từ nhiều nguồn: VnEconomy, Dân Trí, Báo Đầu tư, cổng thông tin Chính phủ, báo nước ngoài → khớp `[ethos-credibility-analyzer]` của News Viral.

Nguồn: [[202610200909-quy-tac-hinh-anh-video-nmb-anh-chot-19-10-2026]] · [[202610261002-video-ads-b-roll-co-cam-xuc-nguoi-viet-dung-doi-tuong-khong]] · [[202610230822-dan-chung-trong-video-nmb-lay-tu-nhieu-nguon-khong-chi-vneco]]

## 5. Chi phí video AI (Google Flow)

- Mỗi video chỉ dùng 1–3 clip Flow (mở – giữa – kết), tốn khoảng 12–36 credit. Phần còn lại dựng từ bài báo, motion, biểu đồ, thẻ số liệu.
- Nếu dựng cả video bằng Flow thì tốn 160–220 credit. Đây là cách cũ và sai.
- Video có người dẫn: chỉ tạo 1–2 clip hook bằng AI + 1 clip outro dùng lại nhiều lần, tổng khoảng 10–20 credit.
- Chọn thời lượng clip theo độ dài câu: ≤13 âm tiết → 4 giây; ≤21 âm tiết → 6 giây; ≤30 âm tiết → 8 giây.
- Xuất video 60fps; clip Flow 24fps phải nội suy (ffmpeg `minterpolate`) để không bị khựng.

Nguồn: [[202610261002-google-flow-chi-1-3-clip-moi-video-chon-4-6-8-giay-theo-do-d]] · [[202610230811-cong-thuc-lam-video-nguoi-dan-chuyen-tiet-kiem-credit-23-10]] · [[202610261002-video-muot-xuat-60-khung-giay-clip-flow-24fps-phai-noi-suy-c]]

## 6. Hotline & CTA

- Video xây **thương hiệu cá nhân** (kiến thức, bản tin, tin nóng): **không** có hotline / số Zalo ở hình, caption hay lời đọc. Số liên hệ để ở tiểu sử kênh.
  - CTA thay bằng: follow kênh + "bình luận 'tư vấn' để nhận phân tích".
- Chỉ video **ads** mới có hotline, và mỗi video phải hỏi lại số liên hệ.
- → ABF: KTVV, ABLA, News Viral thuộc nhóm thương hiệu cá nhân → không hotline. Đối chiếu với "CTA 3 Tầng" của `tiktok-script-skill` trước khi áp dụng.

Nguồn: [[202610261002-luat-hotline-video-thuong-hieu-ca-nhan-khong-hotline-chi-vid]] (bản đầy đủ nhất; 2 note trùng: [[202610240900-video-xay-thuong-hieu-ca-nhan-khong-co-hotline-chi-video-ads]], [[202610240909-video-thuong-hieu-ca-nhan-khong-co-hotline-video-ads-du-an-g]])

## 7. Đăng bài

- **TikTok:**
  - Không đăng bằng script lái trình duyệt: TikTok hiện captcha và video chỉ được 0–11 view.
  - Chủ kênh đăng tay trên kênh có lịch sử.
  - Luôn bật nhãn "Nội dung do AI tạo".
  - Không đăng lại y nguyên file đã công khai ở kênh khác.
- **Facebook Reel:**
  - Đăng tự động được, nhưng giữ 1–2 video/ngày.
  - Khung giờ: 11:30–12:30 và 19:30–21:00.
  - An toàn nhất là hẹn giờ qua Meta Business Suite.
- Đăng tự động an toàn chỉ qua công cụ có API chính thức: Buffer, Metricool, Later.

Nguồn: [[202610261002-dang-tiktok-khong-dang-tu-dong-dang-tay-tren-kenh-co-lich-su]] · [[202610240900-dang-tiktok-bang-script-lai-trinh-duyet-bi-nghi-bot-kenh-chi]] · [[202610261002-facebook-reel-tu-dang-duoc-nhung-giu-1-2-video-ngay-reel-keo]]

---

## Mâu thuẫn với luật ABF hiện có

| Điểm | NMB | ABF | Xử lý |
|---|---|---|---|
| Độ dài video | 1–2 phút, ads > 1 phút | Theo VJ × format (`tiktok-script-skill` L3) | Theo ABF |
| Tốc độ giọng | 1,15–1,2x (nhịp), 1,05x (Vbee) | Chưa có luật | Thử 1,05x với Vbee, đo retention |
| Hotline | Thương hiệu cá nhân không hotline | CTA 3 tầng | Cần VJ chốt → ghi `MEMORY/decisions.md` |

## Hiệu Quả Ghi Nhận (ABF)
| Video / Kênh | Luật áp dụng | View | Ghi chú |
|---|---|---|---|
| | | | |

## Liên Kết
- [[CC-L3-MOC]] · [[MOC-NMB-Hub]]
