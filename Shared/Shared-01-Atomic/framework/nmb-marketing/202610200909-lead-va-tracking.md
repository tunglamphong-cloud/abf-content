---
name: "nmb-202610200909-lead-va-tracking"
title: "Lead và tracking"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "skill", "taoweb", "tham-chieu"]
status: raw
created: 2026-10-20
source: "AGSMem #30943 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610200909-lead-va-tracking.md"
nmb_ma_so: 36
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Lead và tracking

## Environment

Server-side:

```text
TELEGRAM_BOT_TOKEN=
TELEGRAM_CHAT_ID=
NEXT_PUBLIC_SITE_URL=
```

Nếu dự án dùng CRM hoặc webhook khác, giữ nguyên nguyên tắc: secret server-side, validate server-side, không gửi PII vào analytics và không báo success trước khi backend xác nhận.

## Form schema tối thiểu

```text
name: string, required
phone: string, required
interest: enum/string, required
 timeline: optional
budget: optional
note: optional, length-limited
website: honeypot, hidden
consent: required boolean
source: project slug
```

Tên field có thể điều chỉnh theo framework nhưng phải có validation client và server, length limits, loading state, success state, error state và spam handling.

## Server flow

```ts
const input = leadSchema.parse(body);
if (input.website) return { success: true, spam: true };
const text = formatLead(input);
const response = await fetch(`https://api.telegram.org/bot${process.env.TELEGRAM_BOT_TOKEN}/sendMessage`, {
  method: "POST",
  headers: { "content-type": "application/json" },
  body: JSON.stringify({ chat_id: process.env.TELEGRAM_CHAT_ID, text }),
});
if (!response.ok) throw new Error("Lead channel unavailable");
return { success: true };
```

Luôn kiểm tra env trước khi gọi, response status sau khi gọi, giới hạn độ dài text và không log token. Nếu thiếu env, lỗi cần thân thiện và không tiết lộ secret. Test tin nhắn mẫu không dùng dữ liệu khách thật.

## Meta Pixel events

| Ý định | Event | Khi nào |
|---|---|---|
| Trang tải | `PageView` | document load |
| Xem dự án | `ViewContent` | component mount |
| Gọi/Zalo/mở form | `Contact` | click |
| Nhận brochure/mặt bằng/chính sách | custom `BrochureCTA` hoặc tên rõ hơn | click CTA |
| Lead thành công | `Lead` | response 2xx + `success=true` |

Safe params: `placement`, `contact_method`, `content_name`, `content_category`, `project_slug`. Không gửi họ tên, điện thoại, email, ghi chú, Bot Token, Chat ID hoặc dữ liệu form.

## Project migration

Sau khi clone baseline, thay:

- `content_name` và `source` thành slug dự án mới.
- advisor success/error copy.
- interest options theo tài liệu mới.
- hotline/Zalo links.
- CTA custom event placement.
- Pixel ID bằng giá trị người dùng cung cấp; nếu chưa có thì không giả lập.

## Test checklist

- Payload hợp lệ → Telegram success.
- Thiếu name/phone/consent → validation error.
- Honeypot có giá trị → không gửi Telegram.
- Thiếu token/chat ID → lỗi cấu hình, không success giả.
- Telegram response lỗi → error UI, không bắn `Lead`.
- Submit thành công → bắn đúng một `Lead`, reset form và hiển thị success.
- Click CTA chỉ bắn custom CTA, không bắn `Lead`.
- Không có PII trong network analytics params.

## Anti-patterns

- Không gọi `https://api.telegram.org/bot...` từ frontend.
- Không đặt token trong `.env` public hoặc `NEXT_PUBLIC_*`.
- Không đặt access token trong Pixel script.
- Không gửi PII trong URL query string.
- Không dùng số điện thoại hoặc email của baseline cũ.
- Không hiển thị “đã gửi thành công” nếu backend chưa trả success.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610200909-lead-va-tracking.md`
