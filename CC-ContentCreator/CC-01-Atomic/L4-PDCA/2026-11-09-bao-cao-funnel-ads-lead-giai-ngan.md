---
name: pdca-bao-cao-funnel-ads-lead-giai-ngan
type: framework
subtype: pdca-review
topics: ["báo cáo", "funnel", "ads", "CPL", "giải ngân", "doanh thu", "KPI"]
status: raw
created: 2026-11-09
source: "NMB quy trình báo cáo ads & sale + chạy quảng cáo Facebook, đổi KPI sang funnel vay vốn"
confidence: medium
verified: false
related: ["[[CC-L4-MOC]]", "[[202610200909-quy-trinh-bao-cao-ads-sale]]", "[[202610200909-quy-trinh-chay-quang-cao-facebook]]", "[[2026-11-09-cham-diem-phan-loai-lead-vay]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — skill /abf-bao-cao-funnel; ngưỡng KPI chưa có số liệu ABF"]
---

# Báo Cáo Funnel: Ads/Video → Lead → Giải Ngân → Doanh Thu

> **Framework này làm gì:** đo hiệu quả từng VJ, từng video, từng chiến dịch tới tận **doanh thu**, không dừng ở view hay CPL. NMB dừng ở "cọc"; ABF đi tới "giải ngân + thu phí + hoa hồng".

---

## Funnel & Chỉ Số

| Tầng | Chỉ số | Công thức |
|---|---|---|
| 1 Nội dung | View, lượt lưu, bình luận "tư vấn" | Lấy từ TikTok/FB Insights |
| 2 Lead | Số lead, **CPL** (với ads) | Chi phí ÷ lead |
| 3 Lead đạt | Lead ≥ 45 điểm | Theo [[2026-11-09-cham-diem-phan-loai-lead-vay]] |
| 4 Cam kết | Ký HĐ tư vấn + có đồng ý chuyển NH | |
| 5 Nộp NH | Hồ sơ đã nộp | |
| 6 Giải ngân | Số hồ sơ, **tổng tiền giải ngân** | |
| 7 Doanh thu | Phí tư vấn + hoa hồng NH (đã đối soát) | |
| — | **Doanh thu / lead**, **chi phí / hồ sơ giải ngân**, **ROAS** | Doanh thu ÷ chi phí ads |

**Tỷ lệ chuyển đổi cần theo dõi:** lead → lead đạt · lead đạt → cam kết · nộp → giải ngân.

## Ngưỡng Đánh Giá

> ⚠️ **Chưa có số liệu ABF.** Số NMB (CPL 350–400k; 3–4 lead nét → 1 hẹn; 3–5 hẹn → 1 chốt) là của ngành BĐS — **không dùng làm ngưỡng**. Chạy 4 tuần đầu để lấy baseline, rồi VJ chốt ngưỡng Tốt / Cần theo dõi / Báo động và ghi vào `MEMORY/decisions.md`.

## Quy Tắc Vận Hành Ads (giữ từ NMB)

- Giai đoạn test chạy ABO; nhóm thắng gộp sang CBO. Không giảm ngân sách quá 20% một lần.
- Không sửa quảng cáo trong 72 giờ đầu.
- Ưu tiên mục tiêu **Khách hàng tiềm năng** (form) hơn Tin nhắn (vì chỉ số "bắt đầu trò chuyện" bị thổi phồng).
- Tắt Audience Network, chọn vị trí thủ công.
- Dịch vụ tài chính: kiểm tra chính sách quảng cáo của Meta/TikTok trước khi lên camp (vùng 5 checklist pháp lý).
- Đặt tên chiến dịch: `ABF | [VJ] | [workflow: news/case/ktvv] | lead | [dd/mm/yyyy] | [định dạng]`.

## Cách Viết Báo Cáo (giữ từ NMB)

- Tiếng Việt, danh sách dọc, ít icon. Mỗi báo cáo có **nhận xét + 1–3 hành động cụ thể**.
- **Số liệu tính bằng công thức hoặc code**, AI không tự nhẩm.
- Kỳ báo cáo: ngày (lead, CPL) · tuần (đủ funnel) · tháng (doanh thu đã đối soát).
- Phân quyền: sale chỉ xem lead của mình; chi phí ads và doanh thu chỉ quản lý xem.

## Mẫu Báo Cáo Tuần

```
BÁO CÁO TUẦN [dd/mm–dd/mm] — [VJ / toàn kênh]
1. Chi phí ads: … | Lead: … | CPL: …
2. Lead đạt: … (…%) | Cam kết: … | Nộp NH: … | Giải ngân: … hồ sơ / … tỷ
3. Doanh thu: phí … + hoa hồng … = … | Doanh thu/lead: … | ROAS: …
4. Video/chiến dịch tốt nhất: … (vì sao)
5. Điểm nghẽn: tầng … (tỷ lệ … thấp hơn tuần trước …)
6. Hành động tuần tới: …
```

← [[CC-L4-MOC]]
