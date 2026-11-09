---
name: "nmb-202610201324-sua-giao-dien-xong-ma-iphone-chua-thay-thi-phai-tat-han-nmb"
title: "Sửa giao diện xong mà iPhone chưa thấy thì phải tắt hẳn NMB Hub rồi mở lại."
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "nmb-hub", "dien-thoai", "van-hanh"]
status: raw
created: 2026-10-20
source: "cuộc chat #12"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610201324-sua-giao-dien-xong-ma-iphone-chua-thay-thi-phai-tat-han-nmb-.md"
nmb_ma_so: 67
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Sửa giao diện xong mà iPhone chưa thấy thì phải tắt hẳn NMB Hub rồi mở lại.

**Câu hỏi dẫn tới:** Đã sửa cuộn nhưng điện thoại vẫn như cũ

Điện thoại vào từ xa lấy giao diện thẳng từ App trên máy anh Bảo, nên sửa file trong app/public là có ngay, không cần phát hành; nhưng NMB Hub cài lên màn hình chính iPhone giữ trang trong bộ nhớ, phải vuốt tắt hẳn rồi mở lại mới nhận bản mới. Sửa phần máy chủ (app/src) chỉ có hiệu lực khi App khởi động lại (đóng cửa sổ đen, bấm biểu tượng); agent đang chạy bên trong NMB Hub không tự khởi động lại được vì sẽ tự tắt chính mình.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610201324-sua-giao-dien-xong-ma-iphone-chua-thay-thi-phai-tat-han-nmb-.md`
