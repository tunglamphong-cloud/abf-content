---
name: framework-landing-page-thu-lead-vay
type: framework
subtype: marketing-framework
topics: ["landing page", "form", "lead", "Meta Pixel", "đồng ý dữ liệu", "Telegram"]
status: raw
created: 2026-11-09
source: "NMB lead-va-tracking + quy trình landing page/taoweb, chuyển sang form vay vốn"
confidence: medium
verified: false
related: ["[[Shared-L3-MOC]]", "[[202610200909-lead-va-tracking]]", "[[202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu]]", "[[2026-11-09-abf-checklist-phap-ly-can-luat-su]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — skill /abf-landing-lead-vay"]
---

# Landing Page Thu Lead Vay

> **Framework này làm gì:** chuẩn hoá trang thu lead cho 4 kênh VJ. Lấy kỹ thuật của NMB (form server-side → Telegram, Meta Pixel, honeypot, không gửi PII vào analytics), đổi **nội dung form** sang hồ sơ vay, và tách **2 ô đồng ý**.

---

## Cấu Trúc Trang (1 trang, mobile trước)

| Khối | Nội dung | Lưu ý |
|---|---|---|
| 1 Hero | Lời hứa giá trị **không cam kết kết quả**: "Xem hồ sơ của bạn hợp ngân hàng nào — miễn phí, trả lời trong 24h" + ảnh/video VJ | Không "duyệt 100%", không "lãi thấp nhất" |
| 2 Vấn đề | 3 tình huống hay gặp: bị từ chối, thu nhập tiền mặt, tài sản kén ngân hàng | Lấy từ Case Study đã đăng (ẩn danh) |
| 3 Cách làm | 4 bước: gửi thông tin → ABF phân tích → chọn NH → đồng hành tới giải ngân | |
| 4 Minh bạch phí | "Chỉ thu phí khi giải ngân, theo hợp đồng. ABF có thể nhận phí giới thiệu từ ngân hàng." | Bắt buộc — xem gói phí |
| 5 Form | Xem bên dưới | |
| 6 Chính sách | Link **Chính sách xử lý dữ liệu cá nhân**: bên xử lý, mục đích, bên nhận, thời hạn lưu, cách rút đồng ý | Nội dung chính sách cần luật sư duyệt |

## Form Schema

```text
name: string, required, ≤ 60
phone: string, required, VN format
loan_amount: enum (<500tr / 500tr–1 tỷ / 1–3 tỷ / >3 tỷ), required
purpose: enum (kinh doanh / mua nhà / xây sửa / tiêu dùng / đảo nợ), required
collateral: enum (sổ đỏ đất ở / đất nông nghiệp / căn hộ / xe / không có), required
income_type: enum (lương chuyển khoản / kinh doanh tiền mặt / hỗn hợp), required
cic_self: enum (chưa vay / đang vay đúng hạn / từng trễ hạn / không rõ), optional
province: string, optional
note: string, optional, ≤ 300
website: honeypot, hidden
consent_advice: boolean, REQUIRED, KHÔNG tick sẵn
consent_share_bank: boolean, optional, KHÔNG tick sẵn
source: vj_slug + video_id (từ UTM)
```

**2 ô đồng ý (tách riêng):**
- ☐ *Tôi đồng ý để [ABF] liên hệ và xử lý thông tin trên nhằm tư vấn vay vốn, theo [Chính sách dữ liệu].* (bắt buộc để gửi form)
- ☐ *Tôi đồng ý để [ABF] chia sẻ thông tin hồ sơ cho ngân hàng đối tác phù hợp sau khi đã thông báo tên ngân hàng cho tôi.* (không bắt buộc)

> Không tick ô 2 vẫn gửi được form. `/abf-lead-to-bank` vẫn phải xin đồng ý riêng, nêu tên ngân hàng cụ thể, trước khi chuyển.

## Kỹ Thuật (giữ từ NMB)

- Token, Chat ID, webhook để ở **server-side env**. Validate cả client và server. Giới hạn độ dài. Có honeypot.
- Báo thành công **chỉ khi** backend trả 2xx.
- Đích lead: Telegram nhóm nội bộ ABF hoặc Google Sheet CRM. Tin nhắn gồm mã lead + điểm tạm (tự tính từ các enum).
- Meta Pixel / TikTok Pixel: `PageView`, `ViewContent`, `Contact` (bấm Zalo/gọi), `Lead` (sau 2xx). **Không gửi tên, SĐT, số tiền vay, ghi chú** vào pixel. Chỉ gửi `vj_slug`, `placement`, `loan_amount_band`.
- Test bằng dữ liệu giả, không dùng số khách thật.

## Khi Nào Dùng

- Tạo trang mới cho từng VJ / chiến dịch ads, hoặc gắn link bio TikTok.

## Anti-pattern

> Tick sẵn ô đồng ý hoặc gộp "đồng ý tư vấn + chia sẻ ngân hàng" thành một ô — trái nguyên tắc đồng ý rõ ràng (cần luật sư xác minh mức yêu cầu cụ thể).
> Gửi số tiền vay hoặc tình trạng CIC vào pixel quảng cáo — đây là dữ liệu tài chính nhạy cảm.

← [[Shared-L3-MOC]]
