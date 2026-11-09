---
name: "nmb-202610200909-quy-trinh-cap-nhat-landing-page-du-an"
title: "QUY TRÌNH: CẬP NHẬT LANDING PAGE DỰ ÁN"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "quy-trinh"]
status: raw
created: 2026-10-20
source: "AGSMem #30930 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/quy-trinh/202610200909-quy-trinh-cap-nhat-landing-page-du-an.md"
nmb_ma_so: 16
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# QUY TRÌNH: CẬP NHẬT LANDING PAGE DỰ ÁN

## Mục tiêu
Sửa nội dung, hình ảnh, thông tin trên landing page dự án mỗi khi có chính sách, tiến độ, hotline mới — đúng kho dự án, không làm hỏng trang đang chạy.

## Các trang đang có
- Onsen Sky Garden: https://www.onsenskygarden.info.vn/
- AnhNguyen Horizon: www.anhnguyenhorizonnhatrang.com
- Web đào tạo: maubaobds.info.vn (chạy trên Manus, sửa qua GitHub; không dùng quy trình này)
- Nhịp Đập Thị Trường: nhipdapthitruong.maubaobds.info.vn
- LeadFast: leadfast.maubaobds.info.vn
- Các trang khác: Hà Sơn, Maison Privée, Astor, Vista... (mã nguồn trên GitHub tài khoản MaubaoBDS, chạy Vercel)
- Tên miền mua ở Vietnix, DNS quản lý ở Vietnix.

## Các bước
1. Xác định trang cần sửa và đọc mã nguồn trang.
2. Đọc nhánh Dự án tương ứng trong AGSMem. Mọi giá, pháp lý, hotline phải khớp kho; mâu thuẫn thì dừng và hỏi.
3. Sửa trên nhánh nháp, không sửa thẳng nhánh chính.
4. Tự kiểm tra: cài đặt, kiểm tra, dựng thử trang. Lỗi thì tự sửa tối đa 2 vòng; vẫn lỗi thì không đưa lên.
5. Đưa lên bản xem trước Vercel, gửi link cho anh Bảo.
6. Anh duyệt mới đưa lên trang chính. Có thể quay về bản cũ bất cứ lúc nào.

## Quy tắc
- CẤM sửa file cấu hình, khóa bảo mật, biến môi trường.
- CẤM tắt khóa bản xem trước của Vercel.
- Trang phải có hình ảnh và cảm xúc, không toàn chữ.
- Liên hệ trên trang: Nguyễn Mậu Bảo – <SĐT-đã-ẩn> (trừ khi anh chỉ định khác). Thương hiệu NMB, không gắn MSH.
- Mọi giá ghi "đã VAT, chưa KPBT" nếu dự án áp dụng.

## Skill dùng để làm trang mới
- realestate-lp-production: dựng landing page BĐS cao cấp từ baseline Maison Privée, có form Telegram, Meta Pixel, Chính sách bảo mật, GitHub và Vercel.

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/quy-trinh/202610200909-quy-trinh-cap-nhat-landing-page-du-an.md`
