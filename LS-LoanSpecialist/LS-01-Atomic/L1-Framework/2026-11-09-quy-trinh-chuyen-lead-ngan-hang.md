---
name: framework-chuyen-lead-ngan-hang
type: framework
subtype: process-framework
topics: ["lead", "ngân hàng đối tác", "hoa hồng", "CTV", "đồng ý dữ liệu", "NĐ 13/2023"]
status: raw
created: 2026-11-09
source: "Mô hình CTV/đại lý hưởng hoa hồng — VJ xác nhận 2026-11-09"
confidence: low
verified: false
related: ["[[LS-L1-MOC]]", "[[2026-11-09-abf-checklist-phap-ly-can-luat-su]]", "[[2026-11-09-cham-diem-phan-loai-lead-vay]]", "[[2026-05-23-ban-do-san-pham-vay-the-chap-23-ngan-hang]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — skill /abf-lead-to-bank"]
---

# Quy Trình Chuyển Lead Cho Ngân Hàng (CTV / Đại Lý Hưởng Hoa Hồng)

> **Framework này làm gì:** chuyển khách vay đủ điều kiện cho ngân hàng hoặc cán bộ tín dụng đối tác, có **đồng ý của khách**, có **bằng chứng bàn giao**, và **đối soát được hoa hồng**.
> ⚠️ Vùng 2–3 của [[2026-11-09-abf-checklist-phap-ly-can-luat-su]] — **chưa có ý kiến luật sư**.

---

## 0. Điều Kiện Trước Khi Chạy (một lần cho mỗi ngân hàng)

| Điều kiện | Ghi chú |
|---|---|
| Có thỏa thuận CTV/đại lý **bằng văn bản** với ngân hàng (hoặc chi nhánh) | Ghi: sản phẩm áp dụng, mức hoa hồng, thời điểm trả, điều kiện lead hợp lệ |
| Biết đầu mối nhận lead (vai trò, kênh nhận) | Không ghi tên/SĐT cán bộ vào vault — ghi trong sheet đối tác |
| Biết **khẩu vị** của NH: LTV tối đa, loại tài sản nhận, nguồn thu chấp nhận, CIC tối thiểu | Lấy từ [[2026-05-23-ban-do-san-pham-vay-the-chap-23-ngan-hang]] + LS L3 |

## 1. Tiêu Chí "Lead Đạt" Để Chuyển

- Điểm ≥ 70 theo [[2026-11-09-cham-diem-phan-loai-lead-vay]], hoặc hồ sơ đã được cấu trúc lại trong gói phí.
- Khớp khẩu vị ít nhất 1 ngân hàng đối tác (tài sản, LTV, nguồn thu, CIC).
- Đã có **đồng ý chuyển dữ liệu** (bước 2).
- Không có cờ đỏ.

## 2. Xin Đồng Ý Của Khách (bắt buộc — tách riêng với đồng ý tư vấn)

Câu mẫu (gửi qua Zalo/tin nhắn để có bằng chứng):

> "Hồ sơ của anh/chị phù hợp với gói vay của **[Tên ngân hàng]**. Để ngân hàng liên hệ và thẩm định, em cần chuyển cho cán bộ ngân hàng các thông tin: họ tên, số điện thoại, nhu cầu vay, thông tin tài sản và thu nhập anh/chị đã cung cấp. ABF có thể nhận phí giới thiệu từ ngân hàng khi khoản vay giải ngân, việc này **không làm tăng lãi hay phí** của anh/chị. Anh/chị đồng ý cho em chuyển thông tin cho **[Tên ngân hàng]** không ạ?"

- Chỉ chuyển khi khách trả lời đồng ý rõ ràng. Chụp và lưu bằng chứng vào hồ sơ CRM.
- Đổi ngân hàng → **xin đồng ý lại**, nêu tên ngân hàng mới.
- Khách từ chối hoặc rút đồng ý → dừng, ghi CRM, không chuyển tiếp.
- Câu "không làm tăng lãi hay phí" chỉ dùng khi **đúng sự thật** với thỏa thuận của ngân hàng đó.

## 3. Bàn Giao

| Mục | Nội dung |
|---|---|
| Kênh | Kênh đã thỏa thuận với NH. Không gửi vào nhóm chat đông người |
| Gói thông tin | Chỉ phần khách đã đồng ý chia sẻ + tóm tắt 4F ngắn (nhu cầu, tài sản, nguồn thu, CIC tự khai) |
| Mã lead | `ABF-[YYMMDD]-[số thứ tự]` — dùng mã này để đối soát, không dùng tên khách |
| Biên bản | Dòng trong sheet bàn giao: mã lead, ngày, ngân hàng, sản phẩm, số tiền dự kiến, xác nhận đã nhận của NH |

## 4. Theo Dõi & Đối Soát Hoa Hồng

- Hỏi NH tiến độ sau 3 ngày làm việc, rồi mỗi tuần. Cập nhật pipeline giai đoạn 5 → 7.
- Giải ngân → ghi số tiền giải ngân thực tế, ngày; tính hoa hồng theo **quy định của từng NH**.
- Cuối tháng đối soát với NH theo mã lead. Lệch thì gửi bảng mã lead + ngày bàn giao để làm căn cứ.
- Lead NH từ chối → ghi lý do, báo khách, đề xuất NH khác (xin đồng ý lại) hoặc gói tư vấn.

## Khi Nào Dùng

- Lead điểm ≥ 70, hoặc hồ sơ gói phí đã sẵn sàng nộp.

## Khi Nào KHÔNG Dùng

- Chưa có thỏa thuận với NH đó.
- Khách chưa đồng ý chuyển dữ liệu.
- Hồ sơ cần "làm đẹp" mới qua — loại.

## Anti-pattern

> Gửi danh sách lead hàng loạt cho cán bộ tín dụng để "ai nhận được thì nhận" — vi phạm đồng ý của khách, mất khả năng đối soát và mất uy tín với NH.
> Hứa với khách "chắc chắn duyệt" để khách đồng ý chuyển — vùng rủi ro 5 của checklist pháp lý.

← [[LS-L1-MOC]]
