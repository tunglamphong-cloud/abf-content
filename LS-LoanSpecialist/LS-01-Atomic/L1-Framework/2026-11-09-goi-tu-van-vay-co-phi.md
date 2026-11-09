---
name: framework-goi-tu-van-vay-co-phi
type: framework
subtype: process-framework
topics: ["phí tư vấn", "% giải ngân", "hợp đồng dịch vụ", "tư vấn chốt", "xung đột lợi ích"]
status: raw
created: 2026-11-09
source: "Mô hình thu phí do VJ xác nhận 2026-11-09 + NMB training 5.2 (7 bước tư vấn chốt)"
confidence: low
verified: false
related: ["[[LS-L1-MOC]]", "[[2026-11-09-abf-checklist-phap-ly-can-luat-su]]", "[[2026-01-12-quy-trinh-tin-dung-7-buoc]]", "[[2026-11-09-cham-diem-phan-loai-lead-vay]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — skill /abf-tu-van-co-phi"]
---

# Gói Tư Vấn Vay Có Phí

> **Framework này làm gì:** biến lead "khó nhưng làm được" (điểm 45–69) thành hợp đồng dịch vụ. Phí = **% số tiền giải ngân theo thỏa thuận với khách**. Song song, ABF nhận **hoa hồng giới thiệu** do ngân hàng trả theo quy định từng ngân hàng.
> ⚠️ Vùng 3–4 của [[2026-11-09-abf-checklist-phap-ly-can-luat-su]] — **chưa có ý kiến luật sư** về điều kiện kinh doanh, công bố hai nguồn thu, và mẫu hợp đồng.

---

## 1. Phạm Vi Dịch Vụ (ghi rõ trong hợp đồng)

| ABF LÀM | ABF KHÔNG LÀM |
|---|---|
| Phân tích hồ sơ theo 4F, chỉ ra điểm nghẽn | Cam kết chắc chắn được duyệt / cam kết lãi suất |
| Chọn ngân hàng và sản phẩm khớp khẩu vị | Sửa, làm giả, "làm đẹp" giấy tờ, chứng từ thu nhập |
| Hướng dẫn chuẩn bị giấy tờ, chứng minh nguồn thu hợp lệ | Tác động cán bộ ngân hàng |
| Đồng hành nộp hồ sơ, theo dõi tới giải ngân | Cho vay, giữ tiền giải ngân của khách |

## 2. Cấu Trúc Phí

| Khoản | Ai trả | Khi nào | Ghi chú |
|---|---|---|---|
| Phí tư vấn: **[x]% × số tiền giải ngân thực tế** | Khách | **Sau khi giải ngân thành công** | Mức % theo thỏa thuận từng khách; ghi bằng số và chữ trong hợp đồng |
| Hoa hồng giới thiệu | Ngân hàng | Theo quy định từng NH | **Công bố cho khách** biết ABF có nguồn thu này |
| Không giải ngân | — | — | Khách **không mất phí** (trừ thỏa thuận khác đã được luật sư duyệt) |

> Bảng mức % theo khoảng giải ngân hoặc độ khó hồ sơ: **chưa chốt** — VJ điền sau. Agent không tự đặt số.

## 3. Quy Trình Chốt (7 bước NMB 5.2 → áp vào vay vốn)

| Bước | NMB (BĐS) | ABF |
|---|---|---|
| 1 Tiếp cận | Chào dự án | Gọi lại lead theo `/abf-telesale-vay` |
| 2 Khám phá nhu cầu | Hỏi mục đích mua | 5 câu hỏi lọc + xin giấy tờ sơ bộ |
| 3 Tư vấn giải pháp | Chọn căn | Trình bày **1 phương án chính + 1 dự phòng** (NH, sản phẩm, số tiền dự kiến, điểm nghẽn phải xử lý) |
| 4 Xử lý do dự | Giá, pháp lý | `/abf-xu-ly-tu-choi` — nhóm "phí" và "tôi tự làm được" |
| 5 Chốt cam kết | Cọc | **Ký hợp đồng dịch vụ** (chưa thu tiền) |
| 6 Theo dõi | Tiến độ thanh toán | Pipeline giai đoạn 5 → 7 |
| 7 Chăm sóc sau | Bàn giao nhà | Thu phí + xuất hóa đơn → xin giới thiệu khách mới |

## 4. Câu Chốt Mẫu

> "Hồ sơ của anh vướng ở chỗ thu nhập chủ yếu là tiền mặt. Em làm được việc này: chọn ngân hàng chấp nhận nguồn thu hộ kinh doanh và hướng dẫn anh chứng minh dòng tiền đúng cách. Phí của em là [x]% trên số tiền giải ngân, **chỉ thu khi ngân hàng giải ngân**. Không giải ngân thì anh không mất gì. Em cũng nói rõ để anh biết: ngân hàng có trả em phí giới thiệu theo quy định của họ. Mình ký hợp đồng dịch vụ hôm nay để em bắt đầu làm hồ sơ nhé?"

## Khi Nào Dùng

- Lead 45–69 điểm, hoặc lead ≥ 70 nhưng khách muốn có người đồng hành.

## Anti-pattern

> Thu phí trước, hoặc thu "phí hồ sơ" không có hợp đồng — là nguồn khiếu nại lớn nhất và làm mất uy tín kênh.
> Giấu hoa hồng ngân hàng — khi khách phát hiện sẽ coi là lừa dối. Luôn công bố.

← [[LS-L1-MOC]]
