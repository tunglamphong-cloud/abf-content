---
name: content-brainstorm
description: >
  Skill brainstorm TRƯỚC KHI làm content cho ABF. Define khái niệm,
  research internet, rồi dẫn VJ qua đúng 10 câu hỏi/session theo các
  framework phân tích sâu (5W1H, 5WHY, PESTEL, Stakeholder, Six Hats,
  Inversion, STEPPS/3Us...) để ra bản đồ ý + quan điểm + angle đa chiều.
  Output: BRAINSTORM BRIEF — đầu vào cho News Viral / KTVV / ABLA / Case Study.
applies_to: [tiktok-chuyen-mon, tiktok-case-study, tiktok-quan-diem, tiktok-thoi-su]
version: 1.0
updated: 2026-10-30
---

# Content Brainstorm Skill — ABF VayVon

> Brainstorm không phải hỏi cho có. Mỗi câu hỏi phải đẩy VJ nhìn chủ đề
> từ một góc mà trước đó chưa nhìn — và mỗi câu trả lời phải làm câu sau sắc hơn.

---

## L1 — INTENT

### Mục đích
Biến một chủ đề thô ("lãi suất giảm", "vay thế chấp sổ hồng chung", "CIC nhóm 2"...)
thành **khái niệm được định nghĩa rõ + bản đồ ý + 3–5 quan điểm có lập trường + angle đã chấm điểm**,
trước khi bước vào bất kỳ workflow viết script nào.

### Khi nào dùng
- VJ có chủ đề nhưng chưa rõ "nói gì, nói với ai, đứng về phía nào"
- Trước sprint planning — cần nhiều ý cho 34 pieces/sprint
- Chủ đề mới, chưa có note trong vault (MOC không có atomic note liên quan)

### Khi nào KHÔNG dùng
- Đã có angle + nội dung rõ → chạy thẳng `/abf-news-viral`, `/abf-ktvv`, `/abf-case-study`, `/abf-abla`
- Case Study đã có hồ sơ đủ 4F → dùng 4F-analyzer trong workflow Case Study (brainstorm chỉ dùng khi cần tìm góc kể chuyện)

### Quan hệ với CLAUDE.md
Skill này là bước **trước** bootstrap viết script, không phải workflow viết script.
→ KHÔNG chạy POPUP 1/2/2.5 và Phase 0 đầy đủ. Chỉ chạy **Bước 0 rút gọn** bên dưới.
Khi brainstorm xong và VJ muốn viết script → chuyển sang bootstrap CLAUDE.md, BRAINSTORM BRIEF làm `INPUT`.

### Đầu ra được xem là hoàn thành khi
- Có CONCEPT CARD (định nghĩa + ranh giới + hiểu lầm + số liệu neo có nguồn)
- Đã hỏi ĐÚNG 10 câu, mỗi câu gắn nhãn framework
- Có BRAINSTORM BRIEF đủ 8 mục (xem L3 — Bước 4)
- Mọi số liệu/khẳng định thực tế đều có nguồn + ngày; giả định của AI được đánh dấu `[AI giả định]`

---

## L2 — KNOWLEDGE

### 7 Nguyên Tắc Bất Biến

1. **Đúng 10 câu / session.** Không hơn, không kém. Đánh số `Câu X/10` mỗi lần hỏi. VJ muốn đào thêm → mở session mới.
2. **Một câu một lần.** Hỏi xong chờ trả lời rồi mới soạn câu tiếp theo. Câu sau PHẢI dùng câu trả lời trước (adaptive) — không hỏi theo danh sách soạn sẵn.
3. **Không bắt VJ viết từ trang trắng.** Mỗi câu kèm 2–4 phương án giả thuyết do agent soạn từ research + vault. VJ chọn, sửa, hoặc gõ ý riêng (ô "Other").
4. **Research trước, hỏi sau.** Mỗi câu có 1–3 dòng `🔎 Bối cảnh` (số liệu/tin/nguồn) để VJ trả lời có căn cứ. Không bịa số — QUY TẮC 3 CLAUDE.md "KHÔNG BAO GIỜ bịa Story".
5. **Mỗi câu một framework, nêu rõ tên.** VJ phải thấy mình đang nhìn từ góc nào: `Câu 4/10 · 5WHY — Tầng gốc rễ`.
6. **Quan điểm phải phản bác được.** Lập trường kiểu "vay vốn cần cẩn thận" là vô nghĩa. Lập trường tốt = có người không đồng ý (giống `_template-perspective.md`).
7. **Lọc an toàn ngành tài chính.** Không hứa chắc duyệt vay, không tư vấn đầu tư cá nhân, không nêu tên thật KH / cán bộ NH, không đưa giải pháp non-public (che mộ, tác động cán bộ, phí dịch vụ...).

### Ngân Hàng Framework

| Framework | Câu hỏi lõi | Dùng tốt cho |
|---|---|---|
| **5W1H** | Ai · Cái gì · Khi nào · Ở đâu · Tại sao · Như thế nào | Define khái niệm, khoanh phạm vi |
| **Ladder of Abstraction** | Nói ở tầng nào: nguyên lý ↔ ví dụ cụ thể có số? | Định nghĩa bình dân vs chuyên môn |
| **Venn A/B/C/KEY** (vault: Shared chân dung KH) | Người xem đang biết gì rồi? Nhóm nào? | Chọn audience, trình độ ngôn ngữ |
| **5WHY** | Tại sao? ×5 → nguyên nhân gốc | Tìm insight sâu, tránh nói bề mặt |
| **PESTEL** | Political · Economic · Social · Technological · Environmental · Legal | Tin vĩ mô, chính sách, lãi suất, BĐS |
| **Stakeholder Map** | Ai được lợi · ai thiệt · ai im lặng? | Tin tức, chính sách mới |
| **First Principles** | Bỏ hết quy ước — bản chất cơ chế là gì? | Kiến thức vay vốn (KTVV), giải thích cơ chế |
| **Six Thinking Hats** | Trắng (dữ kiện) · Đỏ (cảm xúc) · Đen (rủi ro) · Vàng (lợi ích) · Xanh lá (ý mới) · Xanh dương (tổng hợp) | Đa chiều, phản biện |
| **Steelman / Devil's Advocate** | Lập luận MẠNH NHẤT của phe ngược lại là gì? | Kiểm tra quan điểm VJ, format đóng vai Thuỷ |
| **Inversion** | Làm thế nào để thất bại chắc chắn? → tránh điều đó | Hook cảnh báo, "sai lầm khi vay" |
| **Second-order Thinking** | Rồi sao nữa? Hệ quả bậc 2, bậc 3 | Dự báo, tin lãi suất/chính sách |
| **4F** (vault: LS-L4 `_template-4fcase`) | Facts · Feelings · Findings · Future | Case Study |
| **STEPPS + 3Us** (News Viral P2) | Social currency · Triggers · Emotion · Public · Practical · Stories / Unique · Useful · Urgent | Chấm và chọn angle |
| **Trụ cột T1–T4** (tiktok-script-skill) | Chuyên môn · Case Study · Quan điểm · Thời sự | Gắn angle vào trụ cột + funnel |

---

## L3 — EXECUTION

### Bước 0 — Khởi động rút gọn (không hỏi quá 1 popup)

1. Lấy từ `$ARGUMENTS` / prompt: **Chủ đề** (bắt buộc), **Kênh** (tuỳ chọn), **Loại content dự kiến** (tuỳ chọn).
2. Thiếu trường nào → gọi **1 AskUserQuestion duy nhất** gộp các trường thiếu:
   - Kênh: An Bình Vay Vốn · Khang Vay Hay · Thuỷ Vay Vốn · Đạt Vay Đơn Giản (có thể "Chưa chọn kênh")
   - Loại: News Viral · Kiến Thức Vay Vốn · Case Study · Chưa rõ — để brainstorm quyết
   - Chủ đề: nếu thiếu → option "→ Gõ chủ đề vào ô bên dưới"
3. Đọc nhanh (song song, WebFetch raw URL — fallback file local cùng path):
   - `MEMORY/decisions.md`, `MEMORY/preferences.md`
   - `MOC-MASTER.md` → chọn 1–3 atomic note liên quan (TD-L3 TC/BDS/CS, LS-L2/L3, CC-L2/L3)
   - `Shared/Shared-01-Atomic/framework/2026-05-23-chan-dung-khach-hang-muc-tieu-abf.md` (Venn A/B/C/KEY)
   - Nếu đã chọn kênh: strategy file của VJ (bảng path tại CLAUDE.md Bước 2.5) → lưu `[CHANNEL STRATEGY]`
4. ⏱️ Tối đa 30 giây. File lỗi → ghi nhận, bỏ qua.

### Bước 1 — Research Internet (chủ động)

Dùng **WebSearch** (mode `standard`; `extended` khi tin rất mới, số liệu khó tìm, hoặc standard trả kết quả mỏng) + **WebFetch** đọc nguồn gốc.

Tìm theo 5 nhóm, mỗi nhóm 1 truy vấn trở lên (tiếng Việt trước, tiếng Anh nếu cần cơ chế quốc tế):

| Nhóm | Mục tiêu | Truy vấn mẫu |
|---|---|---|
| ① Định nghĩa | Định nghĩa chính thức / pháp lý | `"[khái niệm]" là gì quy định ngân hàng nhà nước` |
| ② Số liệu mới | Con số gần nhất (≤ 6 tháng) | `[khái niệm] số liệu [tháng/năm hiện tại]` |
| ③ Tin & chính sách | Tin tức, thông tư, nghị định liên quan | `thông tư [khái niệm] [năm]` |
| ④ Tiếng nói người xem | Người vay đang hỏi / sợ / hiểu sai gì | `[khái niệm] hỏi đáp`, diễn đàn, comment |
| ⑤ Phản biện | Quan điểm trái chiều, chuyên gia phản đối | `[khái niệm] rủi ro / tranh cãi / chuyên gia cảnh báo` |

**Xếp hạng độ tin cậy nguồn** (ghi kèm mỗi dữ kiện):
- 🟢 Tier 1: SBV, Chính phủ, Tổng cục Thống kê, công bố chính thức của ngân hàng, văn bản pháp luật
- 🟡 Tier 2: Báo lớn (VnExpress, CafeF, VnEconomy, Tuổi Trẻ, Thanh Niên...), báo cáo CTCK
- 🔴 Tier 3: Diễn đàn, mạng xã hội, blog — CHỈ dùng cho nhóm ④ (tiếng nói người xem), không dùng làm số liệu

⛔ Không tìm thấy số liệu → nói rõ "chưa tìm thấy", KHÔNG ước tính rồi trình bày như dữ kiện.
⏱️ Tối đa ~2 phút cho Bước 1. Research bổ sung giữa các câu: tối đa 2 truy vấn/câu, chỉ khi câu trả lời của VJ mở ra một khẳng định cần kiểm chứng.

### Bước 2 — CONCEPT CARD (Define)

Output trực tiếp trong conversation:

```
🧩 CONCEPT CARD — [Khái niệm]
Định nghĩa bình dân (≤25 từ, nói được bằng miệng):
Định nghĩa chuyên môn (có nguồn):
LÀ:        [2–3 gạch đầu dòng — phạm vi]
KHÔNG PHẢI: [2–3 nhầm lẫn hay gặp — khái niệm hàng xóm]
Hiểu lầm phổ biến: [1–3, kèm nguồn nhóm ④ nếu có]
Số liệu neo: [1–3 con số + quy đổi "tức là..." + nguồn + ngày]
Vault đã có: [note liên quan / "chưa có note"]
```

### Bước 3 — 10 Câu Hỏi (lõi của skill)

**Cách hỏi mỗi câu** — gọi `AskUserQuestion` với 1 question:
- `header`: framework (≤12 ký tự), VD `5WHY`, `PESTEL`, `Six Hats`
- `question`: `Câu X/10 · [Framework] — [câu hỏi cụ thể theo chủ đề]`
- `options`: 2–4 giả thuyết agent soạn sẵn, `description` = căn cứ ngắn (nguồn/vault). Option cuối có thể là `"Bỏ qua — để AI giả định"`
- Ngay TRƯỚC khi gọi tool, in 1–3 dòng `🔎 Bối cảnh:` (dữ kiện research liên quan câu này)
- Câu cần chọn nhiều ý (VD PESTEL top yếu tố) → `multiSelect: true`

Sau mỗi câu trả lời: in 1 dòng `📌 Ghi nhận:` (tóm câu trả lời + hệ quả cho câu sau) rồi hỏi tiếp ngay.
VJ chọn "Bỏ qua" → agent tự điền giả thuyết mạnh nhất, đánh dấu `[AI giả định]`, không hỏi lại.

**Khung 10 câu — 4 vòng** (framework mặc định; xem bảng thay thế bên dưới):

| # | Vòng | Framework | Câu hỏi đẩy VJ tới đâu |
|---|---|---|---|
| 1 | DEFINE | 5W1H — What + Ladder of Abstraction | Với khán giả kênh mình, [khái niệm] nên được hiểu ở tầng nào? (định nghĩa nào trong Concept Card đúng "giọng" kênh nhất) |
| 2 | DEFINE | 5W1H — Who + Venn A/B/C/KEY | Ai là người xem cần nghe nhất? Họ ĐÃ biết gì rồi? |
| 3 | DEFINE | 5W1H — When/Where/Why now | Vì sao nói chuyện này BÂY GIỜ? Trigger nào khiến người xem quan tâm tuần này? |
| 4 | ĐÀO SÂU | 5WHY | Agent trình bày chuỗi 5 tầng "tại sao" đã dựng từ research → VJ chọn tầng nào là gốc rễ thật / sửa tầng sai |
| 5 | ĐÀO SÂU | PESTEL | Agent quét 6 yếu tố (mỗi yếu tố 1 dòng có nguồn) → VJ chọn 1–2 yếu tố chi phối mạnh nhất (`multiSelect`) |
| 6 | ĐÀO SÂU | Stakeholder Map | Ai được lợi, ai chịu thiệt, ai chưa biết mình bị ảnh hưởng? Nhóm nào là "nhân vật chính" của video? |
| 7 | ĐA CHIỀU | Six Thinking Hats — Mũ Đen + Steelman | Lập luận MẠNH NHẤT chống lại góc nhìn VJ đang nghiêng về là gì? VJ đáp lại thế nào? |
| 8 | ĐA CHIỀU | Inversion + Second-order | Sai lầm khiến người xem mất tiền/bị từ chối chắc chắn nhất là gì? Rồi hệ quả bậc 2 sau 6–12 tháng? |
| 9 | HỘI TỤ | Quan điểm VJ — "Mọi người nghĩ X. Sự thật là Y." | Lập trường VJ dám đứng tên là gì? (agent gợi 3 lập trường phản bác được, rút từ câu 4–8) |
| 10 | HỘI TỤ | STEPPS + 3Us → Trụ cột T1–T4 | Trong các angle đã nổi lên, angle nào VJ muốn quay trước? (agent đưa top 3–4 angle kèm điểm sơ bộ) |

**Bảng thay thế framework theo loại content** (giữ đúng tổng 10 câu):

| Loại content | Thay câu | Bằng |
|---|---|---|
| Kiến Thức Vay Vốn | 5 (PESTEL) | **First Principles** — bản chất cơ chế (NH kiếm tiền/giảm rủi ro thế nào ở điểm này?) |
| Kiến Thức Vay Vốn | 6 (Stakeholder) | **Six Hats — Mũ Đỏ** — người vay CẢM THẤY gì khi gặp vấn đề này lần đầu? |
| Case Study | 4 (5WHY) | 5WHY áp vào **lý do bị từ chối** trước đó |
| Case Study | 5 (PESTEL) | **4F** — Facts/Feelings/Findings/Future; VJ chọn F nào là "khoảnh khắc thở phào" |
| Case Study (Thuỷ · đóng vai) | 7 | **Steelman 2 vai** — vai A tin gì, vai B tin gì, ai sai ở đâu |
| An Bình Là Ai | 5, 6 | **Six Hats — Mũ Vàng** (giá trị ABF mang lại) + **Steelman** (vì sao người xem chưa tin dịch vụ tài chính) |
| News Viral | — | Giữ nguyên khung mặc định (PESTEL + Second-order là trọng tâm) |

**Adaptive rule:** Nếu câu trả lời của VJ làm một câu phía sau thừa (VD câu 3 đã trả lời luôn stakeholder) → đổi câu đó sang framework khác trong Ngân Hàng Framework chưa dùng, ghi chú `(đổi từ [X] vì đã trả lời ở câu Y)`. Tổng vẫn là 10.

### Bước 4 — BRAINSTORM BRIEF (Tổng hợp)

```
---
handoff:
  vj: [An Bình Vay Vốn / Khang Vay Hay / Thuỷ Vay Vốn / Đạt Vay Đơn Giản / trống]
  workflow: [News Viral / Case Study / Kiến Thức Vay Vốn / An Bình Là Ai]
  format: [chỉ giá trị hợp lệ theo bảng format CLAUDE.md cho VJ × workflow / trống]
  brief_path: outputs/brainstorm/[YYYY-MM-DD]-[topic-slug].md
  winner_angle: "[angle]"
  pillar: [T1/T2/T3/T4]
---
# BRAINSTORM BRIEF — [chủ đề] — [dd/mm/yy]
Kênh: [X / chưa chọn]   Loại content gợi ý: [News Viral / KTVV / Case Study / ABLA]

## 1. CONCEPT CARD
[bản cuối, đã cập nhật theo câu 1]

## 2. KHÁN GIẢ
Nhóm Venn: [A/B/C/AB/BC/AC/KEY] — đã biết gì / chưa biết gì / sợ gì

## 3. BẢN ĐỒ Ý (Idea Tree)
- Gốc rễ (5WHY): ...
- Lực vĩ mô (PESTEL / First Principles): ...
- Người được/mất (Stakeholder): ...
- Rủi ro & sai lầm (Inversion / Second-order): ...
- Phản biện mạnh nhất (Steelman): ...

## 4. QUAN ĐIỂM (3–5)
| # | Lập trường (phản bác được) | Bằng chứng (nguồn) | Phe phản đối nói gì | Độ tự tin |

## 5. ANGLE ĐÃ CHẤM
| # | Angle | STEPPS (x/6) | 3Us (x/3) | Trụ cột | Funnel | Hook gợi ý (≤10 từ) |
→ WINNER: [angle] — lý do 1–2 câu

## 6. ĐỀ XUẤT SẢN XUẤT
Workflow: [...]  Kênh: [...]  Format: [chỉ format hợp lệ theo bảng CLAUDE.md]
Ý cho sprint: [3–5 ý phụ có thể tách thành piece riêng]

## 7. CÂU HỎI CÒN MỞ / CẦN KIỂM CHỨNG
[dữ kiện thiếu, `[AI giả định]` cần VJ xác nhận]

## 8. NGUỒN
[Tier · tên nguồn · URL · ngày]
```

Hook gợi ý ở mục 5 chỉ là nháp — khi viết script thật vẫn phải qua `[hook-writer]` + `[success-framework-scorer]`.

### Bước 5 — Checkpoint & Bàn giao

1. **Chốt handoff** — nếu `vj` / `workflow` / `format` còn trống → 1 AskUserQuestion gộp, CHỈ đưa option hợp lệ theo bảng format CLAUDE.md (Khang/Đạt × Case Study → dùng nhóm như POPUP 2/2.5).
2. Hỏi lưu (QUY TẮC 5): `✅ Hoàn thành brainstorm. → Lưu vào outputs/brainstorm/[YYYY-MM-DD]-[topic-slug].md không?` (local — QUY TẮC 6, không ghi lên GitHub)
3. Quan điểm ở mục 4 đủ chắc + đã có kênh → hỏi thêm: có muốn lưu thành perspective note tại `VJ/VJ-[tên]/VJ-01-Atomic/perspective/` theo `VJ/_templates/_template-perspective.md` không.
4. **Bàn giao** — hỏi: viết script ngay với WINNER angle? Có → gọi Skill theo `handoff.workflow`, args `brief=[brief_path]`:

| workflow | Skill |
|---|---|
| News Viral | `abf-news-viral` |
| Kiến Thức Vay Vốn | `abf-ktvv` |
| An Bình Là Ai | `abf-abla` |
| Case Study | `abf-case-study` (Brief không thay hồ sơ — INPUT CHECK vẫn chạy) |

Skill viết content đọc Brief theo `.claude/skills/abf-tiktok/BRIEF-HANDOFF.md`: bỏ popup đã có, dùng lại Phase 0 Bước 1/3/4/5, VẪN chạy Bước 0/2/2.5/2.6 và đủ mọi phase của workflow.
Không lưu file → vẫn bàn giao được trong cùng session (Brief nằm trong conversation).

**Nhiều angle cho sprint:** mục 6 có 3–5 ý phụ → hỏi VJ có muốn bàn giao lần lượt từng angle (mỗi angle 1 lần chạy workflow, cùng Brief, thay `winner_angle`) không.

---

## L4 — VERIFICATION

### Checklist trước khi xuất BRAINSTORM BRIEF (Pass/Fail)

- [ ] Đã hỏi đúng 10 câu, đánh số X/10, mỗi câu có nhãn framework
- [ ] Ít nhất 6 framework khác nhau được dùng trong 10 câu
- [ ] Mỗi câu có `🔎 Bối cảnh` và 2–4 giả thuyết (không câu nào hỏi trống)
- [ ] Câu 4–10 tham chiếu ít nhất 1 câu trả lời trước đó (adaptive)
- [ ] Concept Card có định nghĩa bình dân ≤25 từ + ranh giới LÀ / KHÔNG PHẢI
- [ ] Mọi số liệu có nguồn + ngày; không có số liệu Tier 3
- [ ] Mỗi quan điểm ở mục 4 có phe phản đối cụ thể
- [ ] WINNER angle có điểm STEPPS + 3Us và gắn trụ cột T1–T4
- [ ] Không vi phạm Nguyên tắc 7 (an toàn ngành tài chính)
- [ ] Format đề xuất nằm trong bảng format hợp lệ của CLAUDE.md

### Edge Cases
- **VJ trả lời "bỏ qua" ≥5 câu** → vẫn hoàn thành 10 câu, nhưng ghi đầu Brief: `⚠️ Brief chủ yếu dựa trên AI giả định — nên chạy lại với VJ trước khi quay.`
- **Chủ đề quá rộng** ("vay vốn") → câu 1 dùng Ladder of Abstraction để thu hẹp; nếu vẫn rộng, mục 6 đề xuất tách thành nhiều session.
- **Không có internet / WebSearch lỗi** → chạy bằng vault + kiến thức nền, gắn nhãn `[chưa kiểm chứng online]` cho mọi dữ kiện, ghi vào mục 7.
- **Tin nóng < 48h** → ưu tiên Tier 1, ghi rõ "thông tin đang cập nhật".

---

## L5 — EVOLUTION

### Version hiện tại: v1.0 (2026-10-30)

### Gotchas cần theo dõi
- Hỏi 10 câu liền có thể dài với VJ bận → theo dõi tỉ lệ "bỏ qua"; nếu cao, cân nhắc bản `--quick` 5 câu (KHÔNG tự áp dụng khi chưa có quyết định trong `MEMORY/decisions.md`).
- CC-L1-MOC (4P, 5W1H, 5Why, bullet-group) đang là shell → khi có note thật, cập nhật bảng Ngân Hàng Framework để trỏ về note.

### Cách cập nhật skill này
- Sau mỗi session, nếu một framework thay thế cho kết quả tốt hơn khung mặc định → ghi vào `MEMORY/decisions.md` (category CONTENT) rồi mới sửa bảng thay thế.
- Quan điểm/angle được quay và có kết quả → Feed Loop (`FEED-LOOP/_GUIDE-FeedLoop.md`).
