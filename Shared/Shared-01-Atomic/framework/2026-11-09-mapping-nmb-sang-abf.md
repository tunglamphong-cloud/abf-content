---
name: framework-mapping-nmb-sang-abf
type: framework
subtype: decision-framework
topics: ["mô hình kinh doanh", "NMB Hub", "lead", "funnel", "skill ABF"]
status: raw
created: 2026-11-09
source: "So sánh tri thức NMB Hub (import 9df0e36) với mô hình ABF do VJ mô tả 2026-11-09"
confidence: medium
verified: false
related: ["[[Shared-L1-MOC]]", "[[MOC-NMB-Hub]]", "[[2026-11-09-abf-checklist-phap-ly-can-luat-su]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — mapping 12 mảng + 7 skill được VJ duyệt"]
---

# Mapping NMB Hub → ABF: Giữ Gì, Chuyển Gì, Bỏ Gì

> **Framework này làm gì:** cho biết tri thức nào của NMB Hub dùng lại được cho ABF, và dùng theo cách nào.

## Hai Mô Hình

| | NMB (MSH Group) | ABF |
|---|---|---|
| Ai | Anh Mậu Bảo — giám đốc kinh doanh dự án, MSH Group (phân phối BĐS) | Kênh phân phối kiến thức vay vốn, 4 VJ (An Bình, Khang, Thuỷ, Đạt) |
| Kênh | Facebook, TikTok, landing page dự án | TikTok, Facebook |
| Sản phẩm | Căn hộ/BĐS của chủ đầu tư | Kiến thức vay → lead vay |
| Doanh thu | Hoa hồng bán BĐS | (a) Hoa hồng giới thiệu khoản vay ngân hàng trả theo quy định từng NH (mô hình CTV/đại lý). (b) Phí tư vấn = % số tiền giải ngân theo thỏa thuận với khách |
| Đích của funnel | Cọc / ký HĐMB | Giải ngân → thu phí + nhận hoa hồng |

## Bảng Mapping

| Mảng | NMB | ABF | Xử lý | Skill / note ABF |
|---|---|---|---|---|
| Phễu content → lead | Video thương hiệu cá nhân + ads dự án → form/Messenger | Video KTVV/Case Study → bình luận "tư vấn" / form / inbox | Chuyển ngữ cảnh | `/abf-landing-lead-vay`, [[2026-11-09-nmb-bai-hoc-video-content-ap-dung-abf]] |
| Chân dung khách | 6 nhóm người mua (4.1) | Venn A/B/C/KEY | Giữ ABF, mượn "3 câu hỏi phân loại nhanh" | `/abf-lead-scoring` |
| Nguồn lead | FBnumber quét SĐT, cà masothue (LeadFast), tệp khách cũ | Chỉ lead do khách tự để lại + khách giới thiệu | **Bỏ quét/cà dữ liệu** | [[2026-11-09-abf-checklist-phap-ly-can-luat-su]] |
| Telesale / hẹn | Mở lời 15 giây, kết bằng 1 bước nhỏ (5.1) | Gọi lại lead vay, hỏi nhanh 4F, hẹn gửi giấy tờ | Giữ khung, đổi câu mẫu | `/abf-telesale-vay` |
| Tư vấn chốt | 7 bước bán BĐS (5.2) | Quy trình tín dụng 7 bước + chốt hợp đồng phí hoặc chuyển NH | Chuyển ngữ cảnh | `/abf-tu-van-co-phi` |
| Xử lý từ chối | 32 câu, 3 nguyên tắc, mỗi câu 4 phần (6.1) | Câu từ chối của khách vay | Giữ cấu trúc, viết lại nội dung | `/abf-xu-ly-tu-choi` |
| CRM / hồi âm | Pipeline 7 giai đoạn đến cọc (5.4) | Pipeline 8 giai đoạn đến thu phí | Chuyển ngữ cảnh | `/abf-lead-scoring`, `/abf-bao-cao-funnel` |
| Chuyển lead | — (NMB tự chốt) | Chuyển lead cho NH/cán bộ tín dụng, nhận hoa hồng | **Mới** | `/abf-lead-to-bank` |
| Ads FB / báo cáo | ABO→CBO, không sửa trong 72 giờ, CPL 350–400k | Giữ quy tắc vận hành; KPI đổi sang lead đạt → giải ngân → doanh thu | Giữ + đổi KPI | `/abf-bao-cao-funnel` |
| Landing page thu lead | taoweb: form → Telegram, Pixel, consent | Form vay, 2 ô đồng ý tách riêng | Giữ kỹ thuật, đổi form | `/abf-landing-lead-vay` |
| Trợ lý Zalo / NMB Hub UI | Bot và giao diện riêng của NMB Hub | — | Bỏ | — |
| Bảng hàng, báo giá căn, kho dự án (3.x, 7.1) | Đặc thù BĐS | Thay bằng bản đồ sản phẩm 23 NH (LS L2) | Bỏ | [[2026-05-23-ban-do-san-pham-vay-the-chap-23-ngan-hang]] |
| Đạo đức / KPI (8.1, 8.3) | 5 vùng rủi ro, KPI tuần | Thêm rủi ro ngành vay: hứa chắc duyệt, "làm đẹp hồ sơ", thu phí trước, nhận tiền hai phía | Chuyển ngữ cảnh | [[2026-11-09-abf-checklist-phap-ly-can-luat-su]] |

## 7 Skill ABF (VJ duyệt 2026-11-09, xếp theo dòng tiền)

1. `/abf-lead-scoring` — chấm và phân loại lead → [[2026-11-09-cham-diem-phan-loai-lead-vay]]
2. `/abf-lead-to-bank` — chuyển lead cho NH, nhận hoa hồng → [[2026-11-09-quy-trinh-chuyen-lead-ngan-hang]]
3. `/abf-tu-van-co-phi` — gói tư vấn thu % giải ngân → [[2026-11-09-goi-tu-van-vay-co-phi]]
4. `/abf-telesale-vay` — gọi lại lead → [[2026-11-09-telesale-goi-lai-lead-vay]]
5. `/abf-xu-ly-tu-choi` — kho câu từ chối → [[2026-11-09-kho-xu-ly-tu-choi-khach-vay]]
6. `/abf-landing-lead-vay` — landing page thu lead → [[2026-11-09-landing-page-thu-lead-vay]]
7. `/abf-bao-cao-funnel` — báo cáo ads → lead → giải ngân → [[2026-11-09-bao-cao-funnel-ads-lead-giai-ngan]]

## Khi Nào Dùng

- Khi muốn mượn một quy trình NMB: tra bảng trước để biết dùng nguyên hay phải đổi.

## Anti-pattern

> Không lấy số liệu của NMB (CPL 350–400k, 3–4 lead nét → 1 hẹn) làm KPI cho ABF. Đó là ngành BĐS với giá trị đơn hàng khác. ABF phải đo lại từ dữ liệu của mình.

← [[Shared-L1-MOC]] · [[MOC-NMB-Hub]]
