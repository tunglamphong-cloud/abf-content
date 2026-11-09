---
name: "nmb-202610200909-maison-privee-baseline-project-moi"
title: "Maison Privée baseline → project mới"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "skill", "taoweb", "tham-chieu"]
status: raw
created: 2026-10-20
source: "AGSMem #30942 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610200909-maison-privee-baseline-project-moi.md"
nmb_ma_so: 35
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Maison Privée baseline → project mới

## Mục đích

Dùng file này khi người dùng muốn làm nhanh “tương tự Maison Privée”. Đây là mapping kỹ thuật và conversion pattern; không phải kho dữ liệu để copy nội dung.

## Component map

| Baseline pattern | Vai trò | Khi tái sử dụng |
|---|---|---|
| Fixed header + mobile drawer | Điều hướng anchor, hotline, CTA | Giữ pattern; thay brand/nav labels/contact |
| Hero editorial | Định vị trong một viewport | Thay ảnh, kicker, title, tagline, stats, CTA |
| Trust strip | Xây niềm tin | Chỉ hiển thị developer/partner đúng dự án |
| Overview composition | Câu chuyện địa chỉ/thương hiệu | Thay copy, fact ledger, image, source |
| Location connection board | Chứng minh khả năng kết nối | Thay mốc, thời gian, note giao thông |
| Residence showcase | Giúp chọn sản phẩm | Thay unit types, areas, status, image |
| Resource room | Mồi nhận lead chất lượng | Thay mặt bằng, brochure, payment, PDF |
| Arrival/amenities | Bán trải nghiệm | Thay tiện ích đã xác minh |
| Wellness/story | Tạo khác biệt cảm xúc | Chỉ dùng claim có nguồn |
| Ownership/value list | Tóm tắt lý do quan tâm | 4–6 điểm có bằng chứng |
| Gallery + lightbox | Cho khách hình dung dự án | Chỉ dùng assets đúng dự án |
| Timeline/offer | Trả lời trạng thái dự án | Gắn “dự kiến” nếu chưa chốt |
| Contact form | Thu lead | Giữ UX; thay advisor/source/options |
| Footer + privacy | Minh bạch và tuân thủ | Thay chủ thể, contact, legal copy |
| Floating CTA/mobile concierge | Tăng điểm chuyển đổi | Chỉ hiển thị kênh đã cấu hình |

## Migration order

Thay dữ liệu theo thứ tự để không bỏ sót:

1. `client/index.html`: lang, title, description, OG metadata, Pixel ID, favicon.
2. Brand constants: project name, monogram, tagline, location, year.
3. `IMAGES`: hero, arrival, wellness, gallery, floorplan/payment assets.
4. Navigation labels và section IDs.
5. Hero: alt, kicker, title, tagline, stats, CTA.
6. Trust/developer: đối tác đúng dự án.
7. Overview/location/residence/amenities/wellness/value/timeline.
8. Resource room: mặt bằng, brochure, payment và disclaimers.
9. Form: interest options, source, error/success copy, advisor.
10. Footer: hotline, email, Zalo, name, MSH/agency text, disclaimer, copyright.
11. Privacy page: collector, purpose, retention, rights, contact.
12. Server: `source`, lead message template, Telegram env names.
13. Meta Pixel: ID, `content_name`, event labels; never send PII.
14. `vercel.json`, `.env.example`, README/deploy notes nếu cần.

## Migration scan

Chạy trong project mới:

```bash
rg -n "Maison Privée|Maison Privee|Ciputra|Kiều Oanh|<SĐT-đã-ẩn>|(tài khoản Google của người dùng)|aerial_c0d20478|arrival_165953ef|rooftop-pool_69de89c7|payment-standard-91" .
```

Kết quả còn lại chỉ được chấp nhận nếu nằm trong migration documentation/test fixture có chủ đích. Không được còn trong JSX, CSS content, metadata, alt text, API payload, footer, privacy hoặc asset constants.

## Keep / replace / hide

| Nhóm | Giữ | Thay | Nếu thiếu |
|---|---|---|---|
| Layout | Grid, spacing, animation pattern | Copy, density theo content | Rút gọn section |
| Lead UX | Form states, honeypot, consent | Advisor/options/source | Giữ form tối thiểu |
| Tracking | Event timing, safe params | Pixel ID/content name | Tắt Pixel, không giả ID |
| Gallery | Lightbox behavior | Project images | Dùng placeholder có nhãn |
| Payment | Card/timeline structure | Số liệu, terms, notes | Ẩn section hoặc CTA nhận chính sách |
| Legal | Cấu trúc privacy/disclaimer | Chủ thể/contact/project | Dùng placeholder pháp lý, không publish claim |
| Design | Editorial rhythm, token strategy | Palette, font, visual motif | Chọn direction riêng từ brief |

## Baseline acceptance

Quick Clone không đồng nghĩa copy y nguyên. Trước bàn giao, dự án mới phải có ít nhất một dấu hiệu riêng rõ ràng: palette, typography pairing, image treatment, brand motif, section naming hoặc hero composition khác Maison. Nếu người dùng muốn giống visual gần như nguyên bản, vẫn thay toàn bộ dữ liệu và kiểm tra quyền sử dụng assets.

## Resource-room pattern

Nếu dự án có PDF/brochure:

- Tạo card theo loại tài liệu, không đổ toàn bộ PDF vào hero.
- Hiển thị benefit rõ: `Mặt bằng`, `Bảng giá`, `Chính sách`, `Phân tích vị trí`.
- CTA card đưa form về đúng interest bằng state update.
- Bắn custom CTA khi click, bắn `Lead` chỉ sau submit thành công.
- Ghi chú `tài liệu tham khảo/dự kiến` nếu chưa phải hồ sơ chính thức.

## Fast MVP threshold

Đủ để bàn giao MVP khi có: hero, overview, location hoặc differentiator, product/resource, contact, footer/privacy; responsive, form API, test/build và không còn dữ liệu cũ. Các section wellness, timeline, map, calculator có thể bổ sung sau nếu thiếu dữ liệu.

## Source discipline

Không chuyển nguyên văn claim Maison sang dự án khác, kể cả câu chữ nghe “chung chung”. Viết lại theo dữ liệu mới và giữ source/status cho mỗi claim.

## Final rule

**Reuse the system. Replace the identity. Verify the data.**

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610200909-maison-privee-baseline-project-moi.md`
