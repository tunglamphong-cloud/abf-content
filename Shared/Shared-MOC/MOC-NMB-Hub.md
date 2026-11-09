---
tags: [MOC, NMB-Hub]
type: moc
branch: Shared
source: NMB Hub (~/.nmb-zalo/tat-ca)
created: 2026-11-09
---

# MOC — Tri thức NMB Hub (import 2026-11-09)

> Tri thức dùng chung của đội NMB (agent NMB Hub) đã nhập vào ABF-Vault.
> Nguồn: `~/.nmb-zalo/tat-ca/` — 142 note `chung/` + ghi nhớ cá nhân (đã gộp vào MEMORY).
> **Trạng thái:** `status: raw`, `verified: false` — nguyên văn ngữ cảnh BĐS, chưa chuyển sang ngữ cảnh vay vốn từng note.
> **Bản đã tối ưu cho ABF:** [[2026-11-09-nmb-bai-hoc-video-content-ap-dung-abf]] (CC L3) — đọc file này trước.
> **Parent:** [[MOC-Shared]] · [[MOC-MASTER]]

## Bản đồ nhập

| Nhánh NMB | Số note | Vị trí trong ABF-Vault | MOC |
|---|---|---|---|
| kinh-nghiem-agent + ky-nang (video/nội dung) | 21 | `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/nmb-hub/` | [[CC-L3-MOC]] |
| quy-trinh (video, thương hiệu, hotline) | 5 | `CC-ContentCreator/CC-01-Atomic/L1-Framework/nmb-hub/` | [[CC-L1-MOC]] |
| nmb-training (giáo trình sale 18 module) | 19 | `Shared/Shared-01-Atomic/concept/nmb-training/` | [[MOC-NMB-Training]] |
| quy-trinh ads / lead / landing page | 6 | `Shared/Shared-01-Atomic/framework/nmb-marketing/` | bên dưới |
| ky-nang công cụ (NMB Hub, Zalo, Flow, taoweb…) | 29 | `Shared/Shared-01-Atomic/framework/nmb-cong-cu/` | bên dưới |
| du-an BĐS + báo giá + quét SĐT Facebook | 62 | `_private/nmb-hub/` (**gitignore — chỉ máy này**) | [[MOC-NMB-Private]] |
| ca-nhan (16 note, nhiều bản trùng) | → 3 dòng | `MEMORY/decisions.md` | — |
| doi/khac (6 khung trống) | 0 | bỏ | — |

## Quyết định đã chốt bên NMB (giữ nguyên để tra)
- 19/10/2026 (anh Bảo): đội được dùng FBnumber quét SĐT từ Facebook — **ABF chưa áp dụng**; các note quét SĐT để ở `_private/`, cần cân nhắc Nghị định 13/2023 về dữ liệu cá nhân trước khi dùng cho ABF.
- 24/10/2026: video thương hiệu cá nhân không hotline; chỉ video ads có hotline.
- 31/10/2026: việc nhiều bước phải có `QUY_TRINH.md`, xong việc dọn file trung gian.

## Marketing — Ads, lead, landing page (6)
| Note | Nội dung |
|---|---|
| [[202610200909-lead-va-tracking]] | Lead và tracking |
| [[202610200909-quy-trinh-bao-cao-ads-sale]] | QUY TRÌNH: BÁO CÁO ADS & SALE |
| [[202610200909-quy-trinh-cap-nhat-landing-page-du-an]] | QUY TRÌNH: CẬP NHẬT LANDING PAGE DỰ ÁN |
| [[202610200909-quy-trinh-chay-quang-cao-facebook]] | QUY TRÌNH: CHẠY QUẢNG CÁO FACEBOOK |
| [[202610200909-quy-trinh-nguon-lead]] | QUY TRÌNH: NGUỒN LEAD |
| [[202610200909-quy-uoc-dat-ten-chien-dich-quang-cao-facebook-moi-la-gi]] | Quy ước đặt tên chiến dịch quảng cáo Facebook mới là gì? |

## Công cụ & vận hành agent (29)
> Phần lớn chỉ dùng được bên trong app NMB Hub (lệnh `nmb …`). Giữ để tham chiếu cách làm.

| Note | Nội dung |
|---|---|
| [[202610261002-doc-ghi-google-sheet-hang-loat-tai-xlsx-qua-trinh-duyet-tao]] | Đọc/ghi Google Sheet hàng loạt: tải xlsx qua trình duyệt, tạo Sheet mới bằng nhập xlsx |
| [[202610261002-gui-ket-qua-qua-zalo-dang-anh-dung-nut-gui-hinh-anh]] | Gửi kết quả qua Zalo dạng ảnh, dùng nút "Gửi hình ảnh" |
| [[202610261002-so-tay-google-flow-khong-bam-enter-chon-anh-bang-cho-1-5-gia]] | Sổ tay Google Flow: không bấm Enter, chọn ảnh bằng @, chờ 1,5 giây trước khi tạo |
| [[202610261002-tiet-kiem-token-lich-chi-chay-script-dung-che-do-lenh-lich-c]] | Tiết kiệm token: lịch chỉ chạy script dùng chế độ lenh, lịch cần suy nghĩ chạy chat riêng |
| [[202610200909-bai-hoc-agent-zalo-khong-duoc-gia-danh-anh-bao-17-10-2026]] | Bài học: agent Zalo không được giả danh anh Bảo (17/10/2026) |
| [[202610200909-design-va-content-framework]] | Design và content framework |
| [[202610200909-github-vercel]] | GitHub → Vercel |
| [[202610200909-maison-privee-baseline-project-moi]] | Maison Privée baseline → project mới |
| [[202610200909-skill-nmb-nmb-video-ban-tin-skill-md-video-doc-9-16-diem-tin]] | Skill NMB "nmb-video-ban-tin" (SKILL.md): video dọc 9:16 điểm tin BĐS từ bài báo, giọng Vbee Mậu Bảo 1 |
| [[202610200909-skill-nmb-taoweb-skill-md-quy-trinh-dung-landing-page-bds-tu]] | Skill NMB "taoweb" (SKILL.md): quy trình dựng landing page BĐS từ baseline Maison Privée, form Telegram, Pixel, GitHub/Vercel, QA |
| [[202610201038-dang-nhap-claude-code-trong-nmb-hub-login-va-ma-dang-nhap-ph]] | Đăng nhập Claude Code trong NMB Hub: /login và mã đăng nhập phải gửi nguyên văn. |
| [[202610201324-dien-thoai-doc-noi-dung-agent-bang-khung-doc-cuon-muot-nut-p]] | Điện thoại đọc nội dung agent bằng khung đọc cuộn mượt, nút ⌨ Phím để về terminal. |
| [[202610201324-khung-xem-co-muc-video-gan-day-va-hien-tron-video-tren-dien]] | Khung Xem có mục Video gần đây và hiện trọn video trên điện thoại. |
| [[202610201324-sua-giao-dien-xong-ma-iphone-chua-thay-thi-phai-tat-han-nmb]] | Sửa giao diện xong mà iPhone chưa thấy thì phải tắt hẳn NMB Hub rồi mở lại. |
| [[202610201545-bieu-tuong-nmb-hub-tren-dien-thoai-phai-them-tu-link-co-dinh]] | Biểu tượng NMB Hub trên điện thoại phải thêm từ link cố định của Trạm, không từ địa chỉ trycloudflare. |
| [[202610201545-lich-su-khung-den-giu-duoc-khi-chuyen-cuoc-chat-va-khi-agent]] | Lịch sử khung đen giữ được khi chuyển cuộc chat và khi agent đã dừng. |
| [[202610201545-nmb-hub-cho-cuoc-chat-claude-code-ngu-sau-2-phut-khong-hoat]] | NMB Hub cho cuộc chat Claude Code ngủ sau 2 phút không hoạt động, giao việc mới thì tự tỉnh và nhớ phiên cũ. |
| [[202610210708-khung-xem-chi-hien-muc-ket-qua-agent-gui-file-tren-may-gap-l]] | Khung Xem chỉ hiện mục KẾT QUẢ agent gửi; file trên máy gập lại. |
| [[202610210708-o-chat-nmb-hub-nhan-anh-dan-ctrl-v-va-keo-tha-file]] | Ô chat NMB Hub nhận ảnh dán Ctrl+V và kéo-thả file. |
| [[202610220147-gui-video-file-vao-nhom-zalo-nhanh-script-gui-mjs]] | Gửi video/file vào nhóm Zalo nhanh (nmb zalo gui) |
| [[202610221506-nmb-zalo-gui-gui-anh-qua-nut-gui-hinh-anh-mac-dinh-file-de-g]] | nmb zalo gui gửi ảnh qua nút 'Gửi hình ảnh' (mặc định), --file để gửi dạng file |
| [[202610221509-antigravity-cli-agy-thay-gemini-cli-da-them-vao-danh-sach-ag]] | Antigravity CLI (agy) thay Gemini CLI, đã thêm vào danh sách agent của NMB Hub |
| [[202610221509-tro-ly-zalo-nguoi-khac-day-thi-dap-di-dom-chi-nghe-sep-khong]] | Trợ lý Zalo: người khác dạy thì đáp dí dỏm 'chỉ nghe Sếp', không ghi bài học |
| [[202610221509-tro-ly-zalo-nhom-duoc-tag-thi-vao-phien-10-phut-im-10-phut-t]] | Trợ lý Zalo nhóm: được tag thì vào phiên 10 phút, im 10 phút thì đóng phiên |
| [[202610230910-nmb-aba-nmb-aba-lai-trinh-duyet-rieng-cua-nmb-hub-co-con-tro]] | NMB ABA (nmb aba): lái trình duyệt riêng của NMB Hub, có con trỏ chuột, cuộn mượt, quay MP4 |
| [[202610230910-nmb-video-dung-video-khung-nmb-tu-kich-ban-json-thay-ags-vid]] | nmb video: dựng video khung NMB từ kịch bản JSON, thay AGS Video, có chuyển cảnh và cảnh motion |
| [[202610230910-nmb-voice-giong-edge-mac-dinh-va-omni-omnivoice-nhan-ban-gio]] | nmb voice: giọng edge (mặc định) và omni (OmniVoice, nhân bản giọng, chạy trên card RTX 4060) |
| [[202610230910-tro-ly-zalo-cach-day-cho-ton-token-va-vi-sao-khong-tu-mo-lin]] | Trợ lý Zalo: cách dạy, chỗ tốn token, và vì sao không tự mở link |
| [[202610261200-cam-nang-su-dung-nmb-hub-cho-nhan-su]] | Cẩm nang sử dụng NMB Hub cho nhân sự (cài, đăng nhập, giao việc, lịch mẫu, trợ lý Zalo) |

← [[MOC-Shared]] · [[MOC-MASTER]]
