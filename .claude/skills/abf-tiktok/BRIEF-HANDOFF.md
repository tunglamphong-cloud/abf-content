# BRIEF HANDOFF — Brainstorm → Workflow viết content

> Luật chung cho `/abf-tiktok`, `/abf-news-viral`, `/abf-ktvv`, `/abf-case-study`, `/abf-abla`.
> Brief do `/abf-brainstorm` tạo, lưu tại `outputs/brainstorm/[YYYY-MM-DD]-[topic-slug].md`, có frontmatter `handoff:`.

## 1. Nhận diện có Brief

Có Brief khi MỘT trong các điều sau đúng:
- `$ARGUMENTS` chứa `brief=<path>` → đọc file đó
- Ngay trước đó trong cùng session vừa chạy xong `/abf-brainstorm` → dùng BRAINSTORM BRIEF trong conversation

Không có Brief + VJ chưa rõ angle/nội dung (POPUP 2 chọn "Chưa có — bỏ qua") → hỏi 1 câu:
`"Chưa có nội dung — chạy /abf-brainstorm trước (10 câu) rồi quay lại không?"` → Có: chạy `/abf-brainstorm`, xong quay lại đúng skill này với Brief. Không: tiếp tục như cũ.

## 2. Bootstrap — lấy từ `handoff:`, bỏ popup tương ứng (Shortcut rule CLAUDE.md)

| Field `handoff` | Working memory | Bỏ popup |
|---|---|---|
| `vj` | `VJ` | POPUP 1 — Kênh |
| `workflow` | `WORKFLOW` | POPUP 1 — Workflow |
| `format` | `FORMAT` | POPUP 2 — Format (+ 2.5) |
| `brief_path` | `INPUT` | POPUP 2 — Nội dung |

Field nào trống / không hợp lệ theo bảng format CLAUDE.md → chỉ hỏi field đó.
Workflow trong Brief khác skill đang chạy (VD Brief = News Viral nhưng đang ở `/abf-ktvv`) → hỏi VJ chọn 1, không tự đổi.

## 3. Phase 0 — dùng lại / vẫn chạy

| Bước Phase 0 (CLAUDE.md) | Có Brief thì |
|---|---|
| 0 — Memory | VẪN CHẠY |
| 1 — Raw input | Dùng Brief mục 1 (Concept Card) + mục 8 (Nguồn). Chỉ WebFetch lại nguồn Tier 1 nếu workflow cần trích nguyên văn |
| 2 — Vault search | VẪN CHẠY, bỏ qua note Brief đã liệt kê ở "Vault đã có" |
| 2.5 — Strategy + _RULE + examples | VẪN CHẠY — bắt buộc (brainstorm không load _RULE/examples) |
| 2.6 — Example analysis | VẪN CHẠY — bắt buộc |
| 3 — Raw input summary | Lấy từ Brief mục 1 + 3 |
| 4 — Frameworks | Lấy 5WHY / 5W1H từ Brief mục 3; 4F sơ bộ suy từ Brief. KHÔNG hỏi lại VJ |
| 5 — Hỏi VJ góc nhìn | BỎ — Brief mục 4 (Quan điểm) đã là góc nhìn VJ. Ghi `✅ lấy từ Brief` |

## 4. Workflow — Brief đi vào phase nào

| Workflow | Phase | Dùng mục Brief |
|---|---|---|
| News Viral | 1.1–1.8 (context, timeline, root cause, stakeholder, viewpoints, forecast) | 1, 3, 4, 8 — vẫn chạy đủ bước, Brief là input sẵn, chỉ bổ sung chỗ thiếu |
| News Viral | 2 (angle) | 5 — WINNER angle vào làm 1 trong 5 angles, vẫn chấm đủ 9 tiêu chí STEPPS + 3Us |
| KTVV | 1–2 | 1 (định nghĩa bình dân), 3, 4 |
| ABLA | 1–2 | 4, 5 |
| Case Study | 1 (4F) | Brief KHÔNG thay hồ sơ — INPUT CHECK vẫn chạy đủ. Brief chỉ dùng cho góc kể chuyện (Phase 3 story-arc) |
| Mọi workflow | Hook / body / CTA | Hook nháp ở Brief mục 5 chỉ tham khảo — vẫn qua `[hook-writer]` + `[success-framework-scorer]` |

⛔ Brief KHÔNG cho phép bỏ phase nào của workflow. Chỉ rút ngắn bằng cách có sẵn input.
