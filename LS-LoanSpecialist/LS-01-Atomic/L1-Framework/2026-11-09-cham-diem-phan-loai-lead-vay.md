---
name: framework-cham-diem-lead-vay
type: framework
subtype: decision-framework
topics: ["lead", "chấm điểm", "phân loại KH", "venn", "4F", "CRM"]
status: raw
created: 2026-11-09
source: "Venn ABF + 4F ABF + NMB training 4.1 (3 câu hỏi phân loại) & 5.4 (pipeline CRM)"
confidence: medium
verified: false
related: ["[[LS-L1-MOC]]", "[[2026-05-23-chan-dung-khach-hang-muc-tieu-abf]]", "[[_template-4fcase]]", "[[2026-11-09-mapping-nmb-sang-abf]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — skill /abf-lead-scoring"]
---

# Chấm Điểm & Phân Loại Lead Vay

> **Framework này làm gì:** mỗi lead vay vào (bình luận "tư vấn", form, inbox) được chấm **trong 5 phút** để quyết định đi đường nào: **Gói phí**, **Chuyển NH**, **Nuôi tiếp** hay **Loại**. Mục tiêu là sale dành thời gian cho lead ra tiền.

---

## Bước 1 — 5 Câu Hỏi Lọc Nhanh (mượn khung "3 câu hỏi phân loại" của NMB 4.1)

| # | Câu hỏi | Trả lời ghi vào |
|---|---|---|
| Q1 | Anh/chị cần vay **bao nhiêu**, để **làm gì**, **khi nào** cần tiền? | Nhu cầu + thời hạn |
| Q2 | Có **tài sản đảm bảo** không (sổ đỏ, xe…)? Sổ của ai, loại đất gì? | Tài sản |
| Q3 | Thu nhập chính từ đâu, **mỗi tháng khoảng bao nhiêu**, nhận tiền mặt hay chuyển khoản? | Nguồn trả nợ |
| Q4 | Đang có khoản vay nào không? Có từng **trễ hạn** không? | CIC (khách tự khai) |
| Q5 | Đã hỏi ngân hàng nào chưa, kết quả thế nào? | Lịch sử từ chối |

## Bước 2 — Chấm Điểm (0–100)

| Tiêu chí | Điểm tối đa | Cách chấm |
|---|---|---|
| Nhu cầu rõ (số tiền + mục đích hợp pháp) | 15 | Rõ cả hai = 15 · mơ hồ = 5 · "vay gì cũng được" = 0 |
| Thời hạn cần tiền | 10 | ≤ 1 tháng = 10 · 1–3 tháng = 6 · chưa rõ = 2 |
| Tài sản đảm bảo | 25 | Sổ chính chủ, đất ở = 25 · đất nông nghiệp / đồng sở hữu = 12 · không có = 0 (tín chấp) |
| Nguồn trả nợ | 25 | Chứng minh được ≥ 2 lần tiền trả hằng tháng = 25 · tiền mặt khó chứng minh = 12 · không rõ = 0 |
| CIC tự khai | 15 | Sạch = 15 · trễ nhóm 2 đã tất toán = 8 · đang nợ xấu nhóm 3–5 = 0 |
| Mức độ hợp tác | 10 | Gửi giấy tờ ngay, nghe máy = 10 · trả lời chậm = 4 |

> Điểm là **ước lượng nội bộ** từ thông tin khách tự khai, không phải kết quả thẩm định. Không báo điểm cho khách.

## Bước 3 — Gắn Venn + Chọn Đường

| Điểm | Venn hay gặp | Đường đi | Skill tiếp theo |
|---|---|---|---|
| ≥ 70 | C, BC, KEY | **Chuyển NH** (hồ sơ đẹp, NH nhận ngay → hoa hồng nhanh). Hỏi khách có cần gói tư vấn không | `/abf-lead-to-bank` |
| 45–69 | AB, AC, B | **Gói phí**: hồ sơ cần cấu trúc lại (nguồn thu tiền mặt, tài sản vướng) — đây là chỗ ABF tạo giá trị | `/abf-tu-van-co-phi` |
| 25–44 | A | **Nuôi tiếp**: gửi video KTVV phù hợp, hẹn gọi lại khi có đủ giấy tờ | `/abf-telesale-vay` (nhịp chăm) |
| < 25 hoặc có cờ đỏ | — | **Loại** lịch sự, không hứa hẹn | — |

**Cờ đỏ (loại ngay, bất kể điểm):**
- Mục đích vay không hợp pháp hoặc né tránh trả lời.
- Khách đề nghị "làm đẹp" giấy tờ hoặc hồ sơ.
- Đang nợ xấu nhóm 5 và không có phương án xử lý.
- Khách không đồng ý để ABF lưu thông tin.

## Bước 4 — Pipeline CRM 8 Giai Đoạn (đổi từ pipeline 7 giai đoạn của NMB 5.4)

```
1 Lead mới → 2 Đã chấm điểm → 3 Đã nhận giấy tờ → 4 Đã ký HĐ tư vấn / đã có đồng ý chuyển NH
→ 5 Đã nộp NH → 6 NH phê duyệt → 7 Giải ngân → 8 Đã thu phí + đã đối soát hoa hồng
```

Mỗi giai đoạn ghi: ngày, người phụ trách, bước tiếp theo + hạn. **Không ghi CCCD/SĐT vào vault**; dữ liệu khách chỉ nằm trong CRM hoặc sheet riêng.

## Khi Nào Dùng

- Ngay khi có lead mới, trước cuộc gọi đầu.
- Khi review pipeline hằng tuần, chấm lại lead "Nuôi tiếp".

## Anti-pattern

> Gọi lead theo thứ tự đến trước — sai: lead 80 điểm chờ 2 ngày sẽ đi ngân hàng khác. Luôn gọi theo **điểm giảm dần**.
> Chấm điểm 4F đầy đủ ở bước này — sai: 4F đầy đủ dành cho hồ sơ đã nhận giấy tờ ([[_template-4fcase]]). Bước này chỉ cần 5 câu hỏi.

← [[LS-L1-MOC]]
