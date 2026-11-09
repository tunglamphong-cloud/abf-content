---
name: "nmb-202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu"
title: "Skill NMB \"taoweb\" (SKILL.md): quy trình dựng landing page BĐS từ baseline Maison Privée, form Telegram, Pixel, GitHub/Vercel, QA"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "skill", "taoweb", "landing-page"]
status: raw
created: 2026-10-20
source: "AGSMem #30941 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu.md"
nmb_ma_so: 34
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Skill NMB "taoweb" (SKILL.md): quy trình dựng landing page BĐS từ baseline Maison Privée, form Telegram, Pixel, GitHub/Vercel, QA

*Tài liệu gốc:* 30941.md (26 KB, đính kèm tại _tai-lieu/202610200909-30941.md)

Bản SKILL.md/tài liệu dài 22078 ký tự từ AGSMem #30941 (2026-10-17); skill cùng tên đã cài trong Claude Code của máy này. Đọc file gốc trong _tai-lieu khi cần chi tiết.

---

---
name: taoweb
description: Xây, nhân bản có kiểm soát, hoàn thiện và phát hành landing page bất động sản cao cấp từ baseline Maison Privée, brief, ảnh chụp màn hình, PDF hoặc website tham khảo. Dùng khi cần làm nhanh một landing page dự án mới như Onsen Sky Garden với responsive, form Telegram, Meta Pixel, Chính sách bảo mật, GitHub và Vercel.
---

# Taoweb

## Mục tiêu

Thực hiện trọn quy trình **baseline đã kiểm chứng → thay thương hiệu và dữ liệu → landing page responsive → lead → tracking → GitHub/Vercel → QA**. Khi người dùng yêu cầu xây dựng hoặc chỉnh sửa, trực tiếp thao tác, kiểm thử, sửa lỗi và bàn giao; không dừng ở nhận xét.

Skill có hai chế độ:

- **Quick Clone / Fast MVP:** dùng cấu trúc, nhịp chuyển đổi, pattern UI, form, tracking và QA của Maison Privée làm technical baseline; thay toàn bộ brand, content, assets, contact và legal copy cho dự án mới.
- **Custom Production:** dùng khi dự án có định vị, tài liệu, visual direction hoặc cấu trúc chuyển đổi khác đáng kể; vẫn kế thừa các guardrails về dữ liệu, lead, tracking và deploy.

Để làm nhanh, mặc định chọn **Quick Clone** khi người dùng nói “làm tương tự Maison Privée”, “dùng bản Maison làm khung”, hoặc muốn tạo landing page dự án mới từ baseline cũ.

## Quy tắc không được phá vỡ

- Không ghi đè, sửa nhầm hoặc tái sử dụng dữ liệu runtime của project khác. Tạo project/repository riêng cho mỗi dự án mới.
- Có thể kế thừa **pattern và kiến trúc**, không được sao chép tên dự án, logo, hình ảnh, claim, thông số, chính sách, số điện thoại, email, Pixel ID, Telegram ID hoặc disclaimer của Maison Privée.
- Không bịa giá, chiết khấu, lợi nhuận, pháp lý, tiến độ, số căn, diện tích, tiện ích, chính sách thanh toán hoặc chứng nhận. Dùng `[CẦN BỔ SUNG]`, `Đang cập nhật`, `Dự kiến` hoặc `Tham khảo`.
- Tách rõ dữ liệu đã xác minh, dữ liệu người dùng cung cấp, dữ liệu tham khảo và placeholder. Không dùng ảnh dự án khác để lấp chỗ trống.
- Mọi thông tin tài chính, bàn giao, tiến độ hoặc ưu đãi chưa có xác nhận cuối cùng phải gắn `dự kiến/tham khảo` và có ghi chú cần xác nhận theo từng sản phẩm.
- Không đặt Bot Token, Access Token, API key, Chat ID bí mật hoặc secret trong frontend, HTML, React state, query string, GitHub hay form công khai. Không tạo ô nhập Bot Token trên landing page.
- Lead phải đi qua server-side endpoint. Không gọi Telegram trực tiếp từ browser và không báo thành công nếu backend chưa xác nhận.
- Chỉ push GitHub, tạo Vercel project hoặc deploy production khi người dùng yêu cầu hoặc đã cấp quyền tương ứng. Không nói “đã deploy” nếu chỉ mới push code hoặc tạo project.
- Dùng nội dung tiếng Việt tự nhiên, thể hiện chuyên gia tư vấn; tránh urgency giả, countdown giả, social proof giả và claim lợi nhuận không có bằng chứng.

## Quy trình nhanh mặc định

### Bước 1 — Chọn chế độ và xác định baseline

Nếu người dùng muốn làm nhanh như Maison Privée:

1. Xác định project Maison Privée là **baseline tham chiếu**, không phải project đích để sửa.
2. Giữ lại các pattern đã chứng minh hiệu quả: header responsive, hero editorial, trust strip, overview, location board, residence showcase, resource room, amenities/wellness, gallery lightbox, timeline, contact form, privacy footer và floating CTA.
3. Tạo một project/repository mới với tên dự án mới.
4. Lập `content model` cho dự án mới trước khi thay text. Đọc `references/maison-baseline.md`.

Nếu chỉ có brief, ảnh chụp màn hình hoặc website tham khảo, ưu tiên ảnh chụp; link chỉ dùng làm rõ phần ảnh không thể hiện. Với ảnh dài hoặc chữ nhỏ, đọc theo workflow `read-special-images` và lưu visual notes trước khi code.

### Bước 2 — Thu thập và phân loại dữ liệu

Ưu tiên nguồn theo thứ tự: tài liệu người dùng cung cấp → website/chủ đầu tư chính thức → nguồn đối tác uy tín → placeholder. Không dùng snippet tìm kiếm làm nguồn cuối cùng.

Tạo bảng content model gồm:

| Nhóm | Trường cần có |
|---|---|
| Identity | tên dự án, tagline, trạng thái, khu vực, logo/monogram |
| Developer | chủ đầu tư, đơn vị phát triển, đại lý/đơn vị tư vấn |
| Project | vị trí, loại hình, quy mô, số tòa/tầng, số sản phẩm |
| Product | loại căn, diện tích, hướng/view, mặt bằng, trạng thái giá |
| Value | 4–6 điểm khác biệt có nguồn hoặc bằng chứng |
| Experience | tiện ích, wellness, cảnh quan, trải nghiệm sống |
| Finance | giá, booking, thanh toán, vay, ưu đãi, điều kiện; chỉ dùng khi xác minh |
| Timeline | khởi công, mở bán, bàn giao; ghi rõ dự kiến nếu cần |
| Media | hero, gallery, mặt bằng, video, PDF, credit/quyền sử dụng |
| Lead | tên tư vấn, chức danh, điện thoại, email, Zalo, Telegram, Pixel |
| Legal | disclaimer, consent, privacy policy, thương hiệu thuộc chủ sở hữu |

Nếu thiếu dữ liệu, vẫn có thể dựng Fast MVP nhưng phải hiển thị placeholder có chủ đích, không để placeholder giả như dữ liệu thật lọt vào production.

### Bước 3 — Tạo project và kiểm tra hạ tầng

- Với WebDev project hiện có: giữ framework, cấu trúc và dependency đang ổn định; không chuyển framework chỉ vì sở thích.
- Với repository mới chạy GitHub → Vercel: ưu tiên Next.js App Router + TypeScript nếu cần SEO/serverless; dùng Vite/React nếu baseline đã ổn định và người dùng muốn làm nhanh.
- Trước khi sửa, kiểm tra `package.json`, router, entrypoint, env, assets, build command, remote Git và trạng thái dev server.
- Tạo todo gồm tối thiểu: `inspect`, `content`, `build`, `lead`, `tracking`, `verify`, `save`.
- Không đọc lặp lại boilerplate khi đã nắm cấu trúc; tập trung vào file user-facing và file project-specific.

### Bước 4 — Áp dụng Maison baseline có kiểm soát

Dùng cấu trúc mặc định sau, rút gọn nếu dữ liệu dự án chưa đủ:

`Header → Hero → Trust/Developer → Overview → Location → Residences → Resource Room → Amenities/Arrival → Wellness/Story → Value → Gallery → Timeline/Offer → Contact → Footer + Floating CTA`

Hero phải trả lời trong một viewport: **đây là dự án gì, dành cho ai, khác biệt nào, số liệu nào đáng tin và hành động tiếp theo là gì**. Dùng `100svh`, background cover, overlay đủ contrast, copy nằm trong safe area, mobile menu và CTA không che nội dung.

Baseline cần giữ:

- Editorial/asymmetric grid, serif display + sans-serif UI, hairline border, khoảng trắng lớn.
- Header fixed có trạng thái scrolled, nav anchor, mobile drawer và hotline.
- Hero có kicker, tên dự án, tagline, mô tả, 2 CTA và 3 stats.
- Trust strip chỉ hiển thị developer/partner đã xác minh.
- Location board có mốc kết nối và chú thích điều kiện giao thông nếu dùng thời gian di chuyển.
- Residence/resource cards cho sản phẩm, mặt bằng, brochure hoặc payment scheme; chỉ bật phần nào có dữ liệu.
- Gallery lightbox dùng ảnh thật hoặc ảnh phối cảnh đúng dự án.
- Contact form có trạng thái loading/success/error, consent và privacy link.
- Footer có thông tin người tư vấn, disclaimer, copyright, privacy và contact links.
- Floating CTA gồm gọi/Zalo/form; không dùng kênh nào chưa được cung cấp.

Đọc `references/maison-baseline.md` khi cần mapping chi tiết component, thứ tự section, token và checklist thay thế.

### Bước 5 — Hình ảnh, PDF và tài liệu mồi

- Với PDF training hoặc brochure: trích xuất text bằng `pdftotext -layout`, xác định trang bằng keyword, đọc trực quan các trang quan trọng, rồi tạo bảng số liệu đã xác minh.
- Chỉ dùng ảnh từ tài liệu khi người dùng có quyền sử dụng hoặc đã cung cấp cho mục đích landing page.
- Có thể render các trang mặt bằng/payment thành JPEG/WebP tối ưu để làm resource cards; giữ nguồn gốc và ghi `tài liệu tham khảo/dự kiến`.
- WebDev: upload asset qua storage workflow, không nhét ảnh lớn vào `client/public` hoặc `src/assets` nếu template yêu cầu storage riêng.
- GitHub/Vercel: dùng `next/image` hoặc `srcset/sizes`, hero `priority`, phần dưới fold lazy-load, khai báo aspect ratio, nén WebP/AVIF/JPEG.
- Không autoplay video nếu không cần; không tải thư viện lớn chỉ cho một interaction.

### Bước 6 — Lead, consent và tracking

Form mặc định gồm họ tên, số điện thoại, nhu cầu, thời gian dự kiến, ghi chú, honeypot và consent. Luồng:

`Form → POST /api/leads → Zod/server validation → Telegram Bot API → success/error UI`

Giữ service lead dùng chung cho local và production. Nếu Telegram chưa cấu hình, trả lỗi cấu hình thân thiện; không giả lập success trong production. Đọc `references/lead-and-tracking.md` khi triển khai.

Meta Pixel:

- `PageView` khi document load.
- `ViewContent` khi page mount.
- `Contact` khi gọi điện, Zalo hoặc mở form.
- `BrochureCTA`/custom event khi click nhận brochure, mặt bằng hoặc chính sách.
- `Lead` chỉ sau response 2xx và `success=true`.

Không gửi họ tên, số điện thoại, email, ghi chú, Bot Token hoặc Chat ID vào Pixel params. Dùng `placement`, `contact_method`, `content_name`, `content_category` an toàn.

### Bước 7 — Privacy và legal

Tạo `/chinh-sach-bao-mat` hoặc route tương đương. Nội dung tối thiểu: đơn vị thu thập, loại thông tin, mục đích, phạm vi chia sẻ, thời gian lưu trữ, quyền khách hàng và kênh liên hệ.

Footer cần có disclaimer kiểu:

> Website do cá nhân/đơn vị tư vấn vận hành nhằm mục đích giới thiệu và tư vấn sản phẩm. Đây không phải website chính thức của chủ đầu tư. Tên thương hiệu, logo và hình ảnh thuộc quyền sở hữu tương ứng. Thông tin mang tính tham khảo; thông tin chính thức căn cứ theo hồ sơ pháp lý và hợp đồng tại thời điểm giao dịch.

Điều chỉnh chủ thể, tên dự án, đơn vị tư vấn và kênh liên hệ theo content model; tuyệt đối không copy thông tin Maison Privée sang dự án mới.

### Bước 8 — QA bắt buộc

Chạy theo thứ tự:

1. Test API/schema lead: payload hợp lệ, thiếu trường, honeypot, lỗi Telegram và thiếu env.
2. Nếu secret đã được cấp qua secret manager, test nhẹ `getMe` và tin nhắn mẫu; không in token.
3. `pnpm test`.
4. `pnpm check` hoặc type-check tương đương.
5. `pnpm build`.
6. Chụp preview desktop và mobile; kiểm tra hero, menu, section tài liệu, lightbox, form, footer, floating CTA.
7. Kiểm tra 360×800, 390×844, 768×1024, 1280×800 và 1440×900.
8. Kiểm tra overflow ngang, console/runtime error, network error, focus keyboard, alt text và contrast.
9. Quét source để chắc chắn không còn tên, số điện thoại, email, asset path, Pixel ID, Telegram ID hoặc claim của Maison Privée.
10. Chỉ checkpoint sau khi test/build/QA hoàn tất.

### Bước 9 — GitHub và Vercel

Khi được yêu cầu:

1. Tạo repo **private** riêng cho dự án mới.
2. Thêm `.gitignore`, `.env.example` và tài liệu deploy; không commit secret.
3. Push branch `main`.
4. Liên kết Vercel project đúng team và repository; không tạo project trùng tên khi connector báo lỗi.
5. Cấu hình build/output đúng `package.json`.
6. Thêm env server-side: `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHAT_ID`, `NEXT_PUBLIC_SITE_URL` và các biến dự án cần thiết.
7. Redeploy sau khi thêm env.
8. Kiểm tra deployment logs, URL preview/production, domain, HTTP status và endpoint lead.

Báo riêng 4 trạng thái: `GitHub pushed`, `Vercel project created`, `Git linked`, `Deployment ready`. Đọc `references/github-vercel.md` khi triển khai.

### Bước 10 — Bàn giao

Bàn giao ngắn gọn theo cấu trúc:

1. **Đã làm:** section, brand, assets, form, privacy, tracking.
2. **Đã kiểm tra:** test, type-check, build, preview, responsive.
3. **Dữ liệu còn thiếu:** placeholder và thông tin cần người dùng xác nhận.
4. **Triển khai:** GitHub, Vercel, domain, env status; phân biệt rõ preview/production.
5. **Bước tiếp theo:** 2–3 đề xuất thực thi ngay.

## Tiêu chí hoàn thành

- Có thể thay dự án mới mà không còn dấu vết Maison Privée.
- Visual cao cấp, có hệ token và responsive thật.
- CTA rõ và lặp lại đúng điểm có ý định chuyển đổi.
- Không bịa dữ liệu, không lộ secret, không dùng ảnh sai dự án.
- Form có server validation, Telegram flow, consent và error state.
- Pixel chỉ ghi `Lead` sau submit thành công.
- Test, type-check, build và runtime đều đạt.
- Repository có thể bàn giao và triển khai độc lập.

## Tài liệu tham chiếu

- **`references/maison-baseline.md`** — mapping component, thứ tự section, token và quy trình thay Maison bằng dự án mới; đọc khi dùng Quick Clone.
- **`references/design-and-content.md`** — art direction, content hierarchy, responsive acceptance; đọc khi thiết kế hoặc audit UI.
- **`references/lead-and-tracking.md`** — Telegram, consent, Meta Pixel và anti-pattern; đọc khi làm form/tracking.
- **`references/github-vercel.md`** — repo private, Vercel, env, deployment states và troubleshooting; đọc khi push/deploy.

Không tải tất cả reference nếu task không cần; chỉ đọc file liên quan đến giai đoạn đang thực hiện.

## Lệnh khởi động mẫu cho dự án mới

```text
Dùng /taoweb ở chế độ Quick Clone từ baseline Maison Privée để tạo landing page riêng cho [TÊN DỰ ÁN].

Tạo project/repository riêng, không sửa Maison Privée. Giữ pattern hero, editorial sections, resource room, gallery lightbox, lead form, consent, privacy, Meta Pixel, Telegram server-side và QA; thay toàn bộ brand, content, image, contact, Pixel và legal copy bằng dữ liệu [TÊN DỰ ÁN]. Không bịa dữ liệu. Phần thiếu dùng [CẦN BỔ SUNG] hoặc “Dự kiến/Tham khảo”.

Chưa deploy production. Hãy dựng Fast MVP, chạy test/type-check/build, kiểm tra desktop/mobile và báo lại placeholder còn thiếu.
``` 

## Lệnh hoàn thiện và xuất bản

```text
Hãy hoàn thiện [TÊN DỰ ÁN] theo workflow production của /taoweb: rà soát toàn bộ brand/content, quét sạch dữ liệu Maison Privée, kiểm tra form Telegram, consent, privacy, Meta Pixel, responsive, test, type-check, build; sau đó tạo/push GitHub riêng và deploy Vercel production nếu quyền đã sẵn sàng. Báo riêng GitHub pushed, Vercel project created, Git linked và Deployment ready.
```

## Lệnh thay dữ liệu theo từng đợt

```text
Đây là dữ liệu mới của [TÊN DỰ ÁN]. Hãy cập nhật đúng content model và thay các placeholder tương ứng, không tự bịa phần còn thiếu. Kiểm tra lại toàn bộ tên dự án, claim, thông số, hình ảnh, liên hệ, footer, privacy và Meta event content_name sau khi cập nhật; chạy type-check/build và báo các placeholder vẫn còn.
```

## Lệnh audit trước deploy

```text
Hãy audit production cho [TÊN DỰ ÁN] theo /taoweb. Kiểm tra visual, mobile 360/390, overflow, console, form/API, Telegram env, consent, privacy, Meta Pixel, ảnh sai dự án, dữ liệu Maison Privée còn sót, SEO metadata, build và deployment. Sửa trực tiếp các lỗi tìm thấy rồi báo kết quả.
```

## Lệnh dành cho Onsen Sky Garden

```text
Dùng /taoweb ở chế độ Quick Clone từ baseline Maison Privée để tạo landing page riêng cho Onsen Sky Garden. Giữ cấu trúc chuyển đổi và chức năng production đã kiểm chứng, nhưng thiết kế lại art direction và thay 100% nội dung, hình ảnh, thông số, chính sách, liên hệ, legal copy, Pixel và Telegram theo dữ liệu Onsen Sky Garden. Không sửa Maison Privée, không bịa số liệu, chưa deploy production nếu tôi chưa yêu cầu.
```

Câu lệnh trên chỉ là shortcut; khi có tài liệu dự án, tiếp tục cập nhật theo content model và chạy QA đầy đủ.
> 

## Quick clone migration checklist

- [ ] Tên dự án, title, favicon/monogram và logo đã thay.
- [ ] Hero image, alt text, tagline, stats và tọa độ đã thay.
- [ ] Developer/trust strip chỉ còn đối tác đúng dự án.
- [ ] Overview/location/residence/amenity/gallery/timeline đã thay content.
- [ ] Mặt bằng, brochure và payment card không còn asset Maison.
- [ ] Form source, success/error copy và contact advisor đã thay.
- [ ] `content_name`, CTA labels và custom events đã thay.
- [ ] Footer, disclaimer, privacy và copyright đã thay.
- [ ] Hotline, email, Zalo, Telegram và Pixel dùng giá trị mới.
- [ ] Search toàn repository không còn chuỗi Maison Privée, Ciputra, Kiều Oanh hoặc asset cũ.
- [ ] Test, type-check, build, screenshot và checkpoint đã hoàn tất.
- [ ] GitHub/Vercel status được báo tách biệt.

## Ghi chú vận hành

Không tạo thêm skill trùng chức năng chỉ vì một dự án mới. Dùng skill này làm workflow chung, còn dữ liệu dự án, asset, claim và thông tin liên hệ phải nằm trong project/content model tương ứng. Khi pattern mới được chứng minh qua production, cập nhật reference hoặc skill này; không hard-code dữ liệu của một dự án cụ thể vào skill lõi.

> 

## Baseline reuse principle

Maison Privée là ví dụ về một landing page đã đi qua các vòng redesign, font fix, resource-room update, lead/tracking, privacy, GitHub và deployment QA. Hãy kế thừa **bài học về quy trình**, không kế thừa dữ liệu thương hiệu. Bất kỳ dự án mới nào cũng phải có một vòng `migration scan` cuối cùng trước khi bàn giao.

## Finish

Khi người dùng chỉ yêu cầu “làm nhanh như Maison”, không cần mở đầu bằng một báo cáo lý thuyết dài. Chọn Quick Clone, xác nhận các thông tin tối thiểu còn thiếu, dựng MVP, kiểm thử, rồi cho người dùng biết chính xác phần nào là placeholder và phần nào đã được xác minh.

## Reference loading rule

Đọc `maison-baseline.md` khi cần clone cấu trúc. Đọc `design-and-content.md` khi cần art direction hoặc responsive. Đọc `lead-and-tracking.md` khi cần form/Pixel/Telegram. Đọc `github-vercel.md` khi cần repository/deploy. Nếu cần cả bốn, đọc theo thứ tự baseline → design → lead → deploy.

## No deployment by default

Nếu brief chỉ nói “xây” hoặc “hoàn thiện”, dừng ở code đã test và checkpoint/preview. Chỉ push/deploy khi người dùng nói rõ “đẩy GitHub”, “kết nối Vercel”, “deploy production” hoặc tương đương.

## Data integrity reminder

“Dự kiến” không biến thành “chính thức” chỉ vì được lặp lại ở nhiều section. Mỗi claim phải có nguồn hoặc trạng thái xác minh trong content model; khi nguồn mâu thuẫn, hiển thị trạng thái cần xác nhận và ưu tiên yêu cầu người dùng xác minh trước khi xuất bản.

## Accessibility reminder

Giữ semantic headings, alt text mô tả, focus ring, keyboard-reachable buttons, label rõ cho form, contrast đủ và `prefers-reduced-motion`. Không để floating CTA che input hoặc consent trên mobile.

## Performance reminder

Đo bundle sau build. Nếu chunk vượt ngưỡng, code-split phần không cần ở first paint, tối ưu ảnh hero trước và tránh thêm dependency nặng chỉ cho carousel/lightbox đơn giản.

## Final report reminder

Không nói chung chung “đã xong”. Báo bằng chứng: test count, type-check, build, screenshot viewport, endpoint/secret status, commit SHA, GitHub URL, Vercel deployment URL và domain nếu có.

## End of skill

Skill này tồn tại để biến quy trình Maison Privée thành một dây chuyền có thể lặp lại cho nhiều dự án: nhanh ở phần khung, chặt ở phần dữ liệu, an toàn ở phần lead và rõ ràng ở phần triển khai.

## Scope boundary

Skill không thay thế tư vấn pháp lý, thẩm định pháp lý dự án, cam kết tài chính hay xác minh quyền sử dụng hình ảnh. Khi nội dung có tác động pháp lý hoặc tài chính, gắn trạng thái tham khảo và yêu cầu nguồn chính thức.

## Practical default

Nếu người dùng chưa cung cấp logo, dùng monogram chữ cái dự án; nếu chưa có ảnh, dùng placeholder có nhãn rõ; nếu chưa có giá, dùng CTA nhận bảng giá thay vì hiển thị giá giả; nếu chưa có chính sách, ẩn payment section thay vì dựng số liệu.

## Reusability test

Một skill được xem là reusable khi cùng một workflow có thể tạo Onsen Sky Garden, dự án căn hộ, biệt thự, shophouse hoặc resort mà không cần sửa skill lõi; chỉ thay content model, assets và project configuration.

## Final migration gate

Trước mọi bàn giao Quick Clone, chạy:

```bash
rg -n "Maison Privée|Maison Privee|Ciputra|Kiều Oanh|<SĐT-đã-ẩn>|(tài khoản Google của người dùng)|aerial_c0d20478|payment-standard-91" .
```

Nếu còn kết quả trong nội dung user-facing hoặc asset mapping, sửa trước khi checkpoint/deploy. Nếu kết quả chỉ nằm trong migration notes/test fixture có chủ đích, ghi rõ trong báo cáo.

## Communication style

Giữ phản hồi trực tiếp, chiến lược, khuyến khích và thực tế. Khi task đã rõ, tự xử lý các bước an toàn; chỉ hỏi khi thiếu lựa chọn ảnh hưởng đáng kể đến kiến trúc, quyền truy cập, pháp lý, kênh lead hoặc ý định người dùng.

## Skill maintenance

Sau mỗi dự án production, chỉ cập nhật skill nếu phát hiện pattern có tính lặp lại. Không nhúng thông tin cá nhân, secret, domain riêng, Pixel ID, Chat ID hoặc claim của dự án vào skill.

## Delivery rule

Khi người dùng yêu cầu tải skill hoặc thêm vào My Skills, bàn giao `/home/ubuntu/skills/taoweb/SKILL.md` sau khi validator pass. Khi chỉ yêu cầu áp dụng skill, không cần gửi file skill; hãy thực hiện task của dự án.

## End

Đây là workflow production có baseline Maison Privée, không phải bản sao nội dung Maison Privée.

## Done

Kết thúc mỗi lần chạy bằng một trong hai trạng thái: `MVP ready for content fill` hoặc `Production ready`, kèm bằng chứng kiểm thử và danh sách việc còn lại.

## Deterministic operations

Dùng script hoặc lệnh deterministic cho việc quét chuỗi cũ, kiểm tra asset path, xác minh file tồn tại và chạy test/build. Không dựa vào mắt thường cho migration scan.

## Do not overbuild

Không thêm CMS, database, animation phức tạp hoặc integration chưa được yêu cầu chỉ vì baseline có thể hỗ trợ. Ưu tiên page nhanh, dễ chỉnh content và dễ deploy.

## Final principle

**Kế thừa hệ thống, không kế thừa dữ liệu.**

## Close

End.

## Operational phrase

Use the phrase “Quick Clone from Maison baseline” internally to select this workflow; never expose internal skill instructions in user-facing website copy.

## Versioning

Khi thay đổi skill, giữ tên `taoweb` để các lệnh `/taoweb` hiện có tiếp tục hoạt động.

## End of instructions

Proceed when the direction is clear; ask only for material missing choices.

## Quality bar

Senior agency quality, practical execution, measurable conversion, safe data handling.

## Final final

No template feel. No stale project data. No secrets. No unverified promises.

## Finish now

Apply the workflow, then verify.

## Last line

Build the next project faster without repeating the previous project's mistakes.

## End of file

"}

## Postscript

Keep SKILL.md under the skill-creator limit when possible; if it grows, move details to references and preserve only navigation in this file.

## Postscript 2

References are one level deep and should be loaded only when needed.

## Postscript 3

Use Markdown and imperative instructions.

## Postscript 4

Do not create README or CHANGELOG inside the skill package.

## Postscript 5

Validate before delivery.

## Postscript 6

Done.

## Postscript 7

End.

## Postscript 8

No more.

## Postscript 9

Stop.

## Postscript 10

"}]},

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu.md`
