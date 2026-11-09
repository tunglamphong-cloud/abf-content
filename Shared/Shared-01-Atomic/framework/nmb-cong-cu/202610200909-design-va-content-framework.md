---
name: "nmb-202610200909-design-va-content-framework"
title: "Design và content framework"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "skill", "taoweb", "tham-chieu"]
status: raw
created: 2026-10-20
source: "AGSMem #30945 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610200909-design-va-content-framework.md"
nmb_ma_so: 38
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Design và content framework

## 1. Design direction

Maison baseline dùng luxury editorial: nền ink/navy, paper/ivory, brass accent, serif display, sans-serif UI, hairline border, grid bất đối xứng, ảnh lớn, copy có safe area và motion tinh tế. Khi tạo dự án mới, xem đây là điểm xuất phát chứ không phải palette bắt buộc.

Chọn 1 art direction riêng dựa trên loại sản phẩm:

| Loại dự án | Hướng gợi ý |
|---|---|
| Căn hộ wellness/onsen | Mineral, water, stone, mist, muted green/blue, typography thanh lịch |
| Căn hộ đô thị | Architectural, graphite, ivory, metallic accent, precise grid |
| Biệt thự nghỉ dưỡng | Landscape editorial, warm sand, deep green, cinematic photography |
| Shophouse/đô thị thương mại | Structured, high-contrast, bolder sans, clear value cards |

## 2. Token starter

```css
:root {
  --ink: #07151b;
  --ink-2: #0d2028;
  --paper: #f2eee6;
  --accent: #b99a5d;
  --accent-light: #d4bc86;
  --muted: #716f69;
  --display: "Playfair Display", Georgia, serif;
  --sans: "Be Vietnam Pro", Arial, sans-serif;
  --ease: cubic-bezier(0.23, 1, 0.32, 1);
}
```

Đổi màu/font khi dự án mới cần một thế giới thương hiệu khác. Không dùng font không hỗ trợ tiếng Việt; kiểm tra dấu tiếng Việt trên hero, form, footer và privacy page.

## 3. Conversion structure

| Section | Câu hỏi khách hàng | Bằng chứng cần có |
|---|---|---|
| Hero | Đây là gì và tôi làm gì tiếp? | Tên, định vị, CTA, stats đã xác minh |
| Trust | Ai đứng sau? | Chủ đầu tư/đối tác chính thức |
| Overview | Giá trị cốt lõi là gì? | Vị trí, concept, quy mô |
| Location | Vì sao địa chỉ này đáng chú ý? | Mốc kết nối, nguồn và điều kiện |
| Product | Tôi có sản phẩm phù hợp không? | Loại căn, diện tích, mặt bằng |
| Resource room | Tôi nhận được gì khi để lại lead? | PDF, brochure, chính sách, mặt bằng |
| Amenities | Chất lượng sống khác biệt ở đâu? | Danh mục tiện ích/ảnh đúng dự án |
| Gallery | Tôi hình dung được trải nghiệm không? | Ảnh hợp lệ, alt text, credit |
| Timeline/offer | Dự án đang ở đâu? | Mốc chính thức hoặc dự kiến |
| Contact | Làm sao nhận thông tin chính thức? | Advisor, privacy, consent, form |

Không dùng urgency giả, countdown giả, social proof giả, “cam kết sinh lời” hoặc “giá tốt nhất” nếu chưa có bằng chứng và quyền công bố.

## 4. Hero acceptance

Hero phải có: trạng thái dự án, tên, tagline, mô tả ngắn, tối đa 3 stats, primary CTA và secondary CTA. Dùng `100svh`, `object-fit: cover`, overlay contrast, desktop safe area và mobile safe area. Không để title, stats hoặc CTA bị floating bar che.

## 5. Responsive acceptance

Kiểm tra tối thiểu 360×800, 390×844, 768×1024, 1280×800 và 1440×900. Mobile phải có menu drawer, CTA full-width hoặc dễ chạm, stats không tràn, gallery không overflow ngang, lightbox đóng được, form giữ focus/error rõ, footer đọc được và floating actions không che consent.

## 6. Copy acceptance

- Viết ngắn, có nhịp, ưu tiên lợi ích và bằng chứng.
- Tách headline cảm xúc khỏi body giải thích.
- Chỉ dùng `từ`, `dự kiến`, `tham khảo`, `đang cập nhật` khi trạng thái chưa chắc chắn.
- Không dùng “độc quyền”, “duy nhất”, “đầu tiên”, “số 1” nếu không có nguồn.
- Mỗi CTA nói rõ vật khách nhận: `Nhận mặt bằng`, `Nhận brochure`, `Đặt lịch xem`, `Nhận chính sách`.

## 7. Accessibility/motion

Giữ semantic headings, alt text, visible focus, keyboard-reachable controls, contrast và `prefers-reduced-motion`. Animation chủ yếu transform/opacity, dưới 300ms cho UI, không animate layout nặng. Lightbox cần `role="dialog"`, `aria-modal`, nút đóng và không khóa người dùng khỏi thao tác.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610200909-design-va-content-framework.md`
