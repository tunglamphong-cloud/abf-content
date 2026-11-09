---
name: framework-abf-checklist-phap-ly
type: framework
subtype: decision-framework
topics: ["pháp lý", "NĐ 13/2023", "dữ liệu cá nhân", "lead", "phí tư vấn", "quảng cáo tài chính"]
status: raw
created: 2026-11-09
source: "Tổng hợp rủi ro khi áp mô hình NMB Hub sang ABF — CHƯA có ý kiến luật sư"
confidence: low
verified: false
related: ["[[Shared-L1-MOC]]", "[[MOC-NMB-Hub]]", "[[2026-11-09-mapping-nmb-sang-abf]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: tạo — danh sách câu hỏi cần luật sư xác minh"]
---

# Checklist Pháp Lý ABF — Điểm Cần Luật Sư Xác Minh

> **Note này làm gì:** liệt kê các điểm pháp lý mà mô hình kiếm tiền của ABF chạm tới: thu lead, chuyển lead cho ngân hàng, thu phí tư vấn, quảng cáo dịch vụ tài chính.
> ⚠️ **Đây KHÔNG phải ý kiến pháp lý.** Mỗi mục là một câu hỏi. Agent và nhân sự ABF **không được tự kết luận** là "được làm". Mục nào chưa có ý kiến luật sư thì giữ trạng thái **❓ Chưa xác minh**.
> Mọi skill `abf-*` về lead, phí, quảng cáo phải đọc note này trước khi chạy.

---

## Cấu Trúc — 4 Vùng Rủi Ro

| # | Vùng | Câu hỏi cần luật sư trả lời | Cách làm tạm thời (an toàn hơn) | Trạng thái |
|---|---|---|---|---|
| 1 | **Thu thập dữ liệu khách** (NĐ 13/2023 về bảo vệ dữ liệu cá nhân) | Form, inbox, bình luận: cần thông báo và xin đồng ý ở mức nào? Lưu trữ bao lâu? Khách rút đồng ý thì xử lý ra sao? | Chỉ nhận lead do khách tự để lại. Form có ô đồng ý **không tick sẵn**, ghi rõ mục đích. Không quét SĐT Facebook, không cà dữ liệu doanh nghiệp. | ❓ |
| 2 | **Chuyển hoặc bán lead cho ngân hàng / cán bộ tín dụng** | Chuyển dữ liệu cho bên thứ ba có cần đồng ý riêng, nêu tên bên nhận không? Nhận tiền theo lead có bị coi là mua bán dữ liệu cá nhân không? | Xin **đồng ý riêng, tách khỏi đồng ý tư vấn**, nêu tên ngân hàng nhận. Lưu bằng chứng (ảnh chụp, tin nhắn, form). Không chuyển lead khi chưa có đồng ý. | ❓ |
| 3 | **Hoa hồng giới thiệu khoản vay** (CTV / đại lý ngân hàng) | Có cần hợp đồng CTV hay đại lý với ngân hàng không? Khi nhận hoa hồng ngân hàng **và** thu phí khách cùng lúc: phải công bố gì cho khách, có xung đột lợi ích không? Thuế với hoa hồng? | Có hợp đồng hoặc thỏa thuận bằng văn bản với từng ngân hàng. **Công bố cho khách** việc ABF có thể nhận hoa hồng từ ngân hàng. | ❓ |
| 4 | **Thu phí tư vấn vay** (% giải ngân theo thỏa thuận) | Hoạt động này có thuộc ngành nghề cần đăng ký hoặc điều kiện riêng không? Mức phí, thời điểm thu, hoàn phí khi không giải ngân? Có bị coi là "dịch vụ trung gian tín dụng" bị cấm hay hạn chế không? | Có hợp đồng dịch vụ bằng văn bản **trước khi làm hồ sơ**. Chỉ thu khi giải ngân thành công. Có hóa đơn. Không cam kết chắc chắn duyệt. | ❓ |
| 5 | **Quảng cáo dịch vụ tài chính** (Luật Quảng cáo, chính sách Meta/TikTok về dịch vụ tài chính) | Video và ads có cần xác nhận nội dung không? Cụm từ nào bị cấm? Ads vay vốn trên Meta/TikTok có cần xác minh nhà quảng cáo không? | Không hứa "duyệt 100%", "lãi thấp nhất", "nợ xấu vẫn vay được". Không tự xưng là ngân hàng. Kiểm tra từ cấm qua [[2026-04-18-tu-cam-tiktok-tai-chinh-do-manh]]. | ❓ |

## Khi Nào Dùng

- Trước khi chạy `/abf-lead-to-bank`, `/abf-tu-van-co-phi`, `/abf-landing-lead-vay`, hoặc lên chiến dịch ads.
- Khi ký hợp tác với ngân hàng mới hoặc đổi cách thu phí.

## Khi Nào KHÔNG Dùng

- Không dùng note này thay ý kiến luật sư.
- Không dùng để trả lời khách "ABF làm vậy là hợp pháp".

## Quy Tắc Cứng (áp dụng ngay, không chờ luật sư)

1. **Không chuyển lead khi chưa có đồng ý riêng của khách**, nêu tên bên nhận.
2. **Không quét SĐT Facebook, không cà masothue** (khác NMB) cho tới khi VJ quyết định bằng văn bản và đã hỏi luật sư.
3. **Không thu phí trước** khi có hợp đồng dịch vụ. Không cam kết kết quả duyệt vay.
4. **Không ghi tên thật, CCCD, SĐT của khách** vào vault (repo public). Dữ liệu khách chỉ để trong CRM hoặc sheet riêng.

## Anti-pattern

> Sai lầm phổ biến là chép nguyên mô hình NMB: NMB bán sản phẩm BĐS cho chủ đầu tư, còn ABF chạm vào **dữ liệu tài chính và tín dụng** của khách và nhận tiền từ **cả hai phía**. Mức rủi ro pháp lý của ABF cao hơn.

## Liên Kết

- [[2026-11-09-mapping-nmb-sang-abf]] · [[Shared-L1-MOC]] · [[MOC-NMB-Hub]]

← [[Shared-L1-MOC]]
