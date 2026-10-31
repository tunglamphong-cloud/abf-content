# VAULT-STRUCTURE-REF.md — Cấu Trúc Vault Thực Tế

> File tham chiếu chính xác. Agent đọc để biết path đúng khi search hoặc ghi.
> Vault root: `/Users/nguyenlocnhi/Downloads/ABF-Vault/`

---

## MOC Phân Tầng (3 Tầng)

```
TIER 0: MOC-MASTER.md
TIER 1: CC-MOC / LS-MOC / TD-MOC / Shared-MOC / VJ-Master
TIER 2: Sub-MOCs theo branch/layer/sector
  CC:     CC-L1-MOC · CC-L2-MOC · CC-L3-MOC · CC-L4-MOC         (shell — chưa có note thực)
  LS:     LS-L1-MOC (shell) · LS-L2-MOC (1 note) · LS-L3-MOC (6 notes) · LS-L4-MOC (template)
  TD:     TD-L1-MOC (shell) · TD-L2-MOC (shell) · TD-L4-MOC (shell)
          TD-L3-TC-MOC (58 notes) · TD-L3-BDS-MOC (16) · TD-L3-CS-MOC (19) · TD-L3-CK-MOC (1)
  Shared: Shared-L1-MOC (1 note) · Shared-L2-MOC (shell) · Shared-L3-MOC (shell) · Shared-L4-MOC (shell)
  VJ:     MOC-VJ-Templates · MOC-VJ-Khang (47: News ×23 + Case Study ×24) · MOC-VJ-AnBinh · MOC-VJ-Dat · MOC-VJ-Thuy
TIER 3: Atomic notes (94+ notes TD, 7+ notes LS, 47 scripts VJ-Khang...)
```

---

## Cấu Trúc Đầy Đủ

```
ABF-Vault/
│
├── MOC-MASTER.md                               ← Entry point (file ở root)
│
├── CC-ContentCreator/
│   ├── CC-00-Inbox/
│   ├── CC-01-Atomic/
│   │   ├── L1-Framework/    _template-framework.md
│   │   ├── L2-KienThucNghe/ _template-concept-writing.md
│   │   ├── L3-KienThucDacThu/ _template-domain-abf.md
│   │   └── L4-PDCA/         _template-pdca-review.md
│   └── CC-MOC/
│       ├── MOC-ContentCreator.md               ← Tier 1
│       ├── CC-L1-MOC.md                        ← Tier 2 shell: 4P, 5W1H, 5Why, bullet-group
│       ├── CC-L2-MOC.md                        ← Tier 2 shell: PAS, AIDA, muc-tieu-dau-ra
│       ├── CC-L3-MOC.md                        ← Tier 2 shell: hook ABF, 4 trụ cột, hook library
│       └── CC-L4-MOC.md                        ← Tier 2 shell: PDCA review, KTP, sprint
│
├── LS-LoanSpecialist/
│   ├── LS-00-Inbox/
│   ├── LS-01-Atomic/
│   │   ├── L1-Framework/    _template-framework-ls.md
│   │   ├── L2-KienThucNghe/ _template-concept-banking.md  ← 1 note thực
│   │   ├── L3-KienThucDacThu/ _template-domain-banking-ops.md  ← 6 notes VPBank
│   │   └── L4-PDCA/
│   │       ├── _template-4fcase.md             ← template quan trọng nhất
│   │       └── 4fcases/                        ← cases đã fill xong
│   └── LS-MOC/
│       ├── MOC-LoanSpecialist.md               ← Tier 1: routes qua layer sub-MOCs
│       ├── LS-L1-MOC.md                        ← Tier 2 shell: 4F-analyzer, logic tiếp nhận
│       ├── LS-L2-MOC.md                        ← Tier 2: 1 note bản đồ 23 NH
│       ├── LS-L3-MOC.md                        ← Tier 2: 6 notes VPBank ops
│       └── LS-L4-MOC.md                        ← Tier 2: template 4F + cases
│
├── TD-TraDa/
│   ├── TD-00-Inbox/
│   ├── TD-01-Atomic/
│   │   ├── L1-Framework/    _template-framework-td.md
│   │   ├── L2-KienThucNghe/ _template-concept-macro.md
│   │   ├── L3-KienThucDacThu/
│   │   │   ├── BDS/
│   │   │   ├── CK/
│   │   │   ├── TC/
│   │   │   ├── CS/
│   │   │   └── _template-domain-macro.md
│   │   └── L4-PDCA/         _template-td-pdca.md
│   └── TD-MOC/
│       ├── MOC-TraDa.md                        ← Tier 1: routes qua sector sub-MOCs
│       ├── TD-L1-MOC.md                        ← Tier 2 shell: framework đọc tin, ethos
│       ├── TD-L2-MOC.md                        ← Tier 2 shell: kỹ năng đọc chỉ số kinh tế
│       ├── TD-L3-TC-MOC.md                     ← Tier 2: 58 notes Tài Chính / Ngân Hàng
│       ├── TD-L3-BDS-MOC.md                    ← Tier 2: 16 notes Bất Động Sản
│       ├── TD-L3-CS-MOC.md                     ← Tier 2: 19 notes Chính Sách
│       ├── TD-L3-CK-MOC.md                     ← Tier 2: 1 note Chứng Khoán
│       └── TD-L4-MOC.md                        ← Tier 2 shell: viewer sentiment, scraping
│
├── Shared/
│   ├── Shared-00-Inbox/
│   ├── Shared-01-Atomic/                       ← dùng 7-type folders (VJ-style)
│   │   ├── concept/         ← kỹ năng mềm (L2): storytelling, simplicity, trust
│   │   ├── framework/       ← framework + tài nguyên (L1+L3): _template-shared.md, chan-dung-khach-hang...
│   │   ├── strategy/        ← PDCA hệ thống (L4): sprint-review, vault-health
│   │   ├── insight/         ← Feed Loop insights
│   │   ├── perspective/
│   │   ├── story/
│   │   └── quote/
│   └── Shared-MOC/
│       ├── MOC-Shared.md                       ← Tier 1
│       ├── Shared-L1-MOC.md                    ← Tier 2: chân dung KH Venn (A/B/C/KEY) — 1 note
│       ├── Shared-L2-MOC.md                    ← Tier 2 shell: kỹ năng mềm → concept/
│       ├── Shared-L3-MOC.md                    ← Tier 2 shell: tài nguyên dùng chung → framework/
│       └── Shared-L4-MOC.md                    ← Tier 2 shell: PDCA hệ thống → strategy/
│
├── VJ/
│   ├── _templates/                             ← 7 templates dùng chung
│   │   ├── MOC-VJ-Templates.md                 ← Index 7 templates
│   │   ├── _template-concept.md
│   │   ├── _template-story.md
│   │   ├── _template-insight.md                ← dùng cho Feed Loop
│   │   ├── _template-perspective.md
│   │   ├── _template-framework.md
│   │   ├── _template-strategy.md
│   │   └── _template-quote.md
│   ├── MOC VJ-Master.md                        ← Tier 1: routing 4 kênh + DNA so sánh
│   ├── VJ-AnBinh/
│   │   ├── VJ-00-Inbox/
│   │   ├── VJ-01-Atomic/
│   │   │   ├── concept/
│   │   │   ├── story/
│   │   │   ├── insight/    ← Feed Loop files lưu ở đây
│   │   │   ├── perspective/
│   │   │   ├── framework/
│   │   │   ├── strategy/
│   │   │   ├── quote/
│   │   │   └── sprint-log.md
│   │   ├── VJ-MOC/MOC-VJ-AnBinh.md             ← Agent đọc thay vì profile.md
│   │   └── scripts/
│   ├── VJ-Dat/     (cấu trúc tương tự AnBinh)
│   ├── VJ-Khang/
│   │   ├── VJ-00-Inbox/
│   │   ├── VJ-01-Atomic/  (7 type folders + sprint-log.md)
│   │   ├── VJ-MOC/
│   │   │   └── MOC-VJ-Khang.md                 ← Tier 2: 47 scripts (News ×23 · Case Study ×24)
│   │   └── scripts/  (47 scripts 2026-05-23 — link ngược lên MOC-VJ-Khang)
│   └── VJ-Thuy/    (cấu trúc tương tự AnBinh, 7-type + sprint-log.md)
│
├── MEMORY/
│   ├── decisions.md
│   ├── blockers.md
│   ├── sessions-log.md
│   └── preferences.md
│
├── FEED-LOOP/
│   └── _GUIDE-FeedLoop.md
│
├── .agent/
│   ├── rules/VAULT-STRUCTURE-REF.md             ← file này
│   └── skills/
│       └── raw-file-atomizer/                   ← SKILL: tự động atomize file raw
│           ├── SKILL.md                          ← Dùng skill này khi user thả file vào
│           ├── references/                       ← branch-jd / type-jd / conflict-rules / gap-detection / md-conversion
│           └── examples/                         ← 4 ví dụ minh hoạ
└── (root)
```

---

## Workflow Phase → Vault Path

### News Viral Workflow (VJ An Bình)

| Phase | Cần gì | Path chính xác |
|---|---|---|
| Phase 0 | Session memory | `MEMORY/decisions.md` + `MEMORY/preferences.md` |
| Phase 1b | Kiến thức liên quan | `LS-LoanSpecialist/LS-01-Atomic/L2-KienThucNghe/` + `L3-KienThucDacThu/` |
| Phase 1.3 | Ethos / credibility nguồn | `TD-TraDa/TD-01-Atomic/L1-Framework/` |
| Phase 1.7 | Tác động ngân hàng / người vay | `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` |
| Phase 2 | Viewer sentiment | `TD-TraDa/TD-01-Atomic/L4-PDCA/` |
| Phase 3 | Hook pattern | `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/` |
| Phase 4a | VJ routing gateway | `VJ/MOC VJ-Master.md` |
| Phase 4 | DNA kênh | `VJ/VJ-AnBinh/VJ-MOC/MOC-VJ-AnBinh.md` |
| Output script | Lưu script | `VJ/VJ-AnBinh/scripts/[YYYY-MM-DD]-[topic].md` |
| Feed Loop | Insight sau run | `VJ/VJ-AnBinh/VJ-01-Atomic/insight/insight-[date]-[topic].md` |
| Session log | Append log | `MEMORY/sessions-log.md` |

### Case Study Workflow (VJ Đạt / Khang / Thuỷ)

| Phase | Cần gì | Path chính xác |
|---|---|---|
| Phase 0 | Session memory | `MEMORY/decisions.md` + `MEMORY/preferences.md` |
| Phase 1 (4F) | Template phân tích hồ sơ | `LS-LoanSpecialist/LS-01-Atomic/L4-PDCA/_template-4fcase.md` |
| Phase 1 (cases cũ) | Hồ sơ tham khảo | `LS-LoanSpecialist/LS-01-Atomic/L4-PDCA/4fcases/` |
| Phase 2 (vĩ mô) | Bối cảnh năm vay | `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` + `/BDS/` |
| Phase 4a (VJ gateway) | VJ routing gateway | `VJ/MOC VJ-Master.md` |
| Phase 4 (DNA) | DNA kênh | `VJ/VJ-[tên]/VJ-MOC/MOC-VJ-[tên].md` |
| Phase 5 (hook) | Hook template | `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/` |
| Phase 6 (body) | Công thức content | `CC-ContentCreator/CC-01-Atomic/L2-KienThucNghe/` |
| Output script | Lưu script | `VJ/VJ-[tên]/scripts/[YYYY-MM-DD]-[case].md` |
| Feed Loop | Insight sau run | `VJ/VJ-[tên]/VJ-01-Atomic/insight/insight-[date]-[case].md` |
| Session log | Append log | `MEMORY/sessions-log.md` |

---

## YAML 15 Fields — Chuẩn Mọi Atomic Note

```yaml
name / type / subtype / topics / status / created / source /
confidence / verified / related / maturity / review_interval /
next_review / reuse_count / evolution_log
```

## Quy Tắc Ghi Note
- Atomic = 1 ý tưởng duy nhất
- Dùng template đúng loại từ nhánh tương ứng
- Điền đủ YAML trước khi ghi nội dung
- `4fcases/` chỉ lưu case đã fill xong F1–F4
- Feed Loop insight → VJ insight/ trước, promote lên CC/LS/TD khi có data

---

## Skill: Raw File Atomizer

**Khi nào dùng:** User thả bất kỳ file raw nào (PDF, audio, link, image, text) vào chat và muốn lưu vào vault.

**Skill file:** `.agent/skills/raw-file-atomizer/SKILL.md`

**Flow tóm tắt:**
```
File raw vào → INTENT synthesis → Branch match (JD-based) → Type match
→ Conflict check → Propose (chờ approve) → Convert MD → Fill template → MOC update
```

**VJ Templates:** `VJ/_templates/_template-{concept,story,insight,perspective,framework,strategy,quote}.md`

---

## Skill: Content Brainstorm

**Khi nào dùng:** VJ có chủ đề nhưng chưa rõ nói gì / nói với ai / đứng về phía nào — chạy TRƯỚC bootstrap viết script.

**Skill file:** `.agent/skills/content-brainstorm.md` (Claude Code: `/abf-brainstorm`)

**Flow tóm tắt:**
```
Chủ đề → Bước 0 rút gọn (memory + MOC + chân dung KH) → Research internet
→ CONCEPT CARD → 10 câu hỏi (5W1H · 5WHY · PESTEL · Stakeholder · Six Hats · Inversion · STEPPS/3Us)
→ BRAINSTORM BRIEF → lưu outputs/brainstorm/ (hỏi trước) → bàn giao workflow viết script
```

---

## Skills — TikTok Script Workflow

> ⚠️ Khi workflow gọi `[skill-name]` → fetch đúng file skill dưới đây bằng [crawler]/WebFetch.
> KHÔNG tự diễn giải skill — phải đọc file trước khi thực thi.

### Skill paths (Base: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-vault/main/`)

| Skill gọi trong workflow | Path file | Dùng khi |
|---|---|---|
| `[tiktok-script-skill]` | `.agent/skills/tiktok-script-skill.md` | ĐỌC TRƯỚC KHI VIẾT BẤT KỲ SCRIPT NÀO — chứa 6 nguyên tắc bất biến + hard constraint hook ≤10 từ |
| `[success-framework-scorer]` | `.agent/skills/success-framework-scorer.md` | Chấm điểm hook theo SUCCESS — gọi sau hook-writer |
| `[hook-writer]` | `.agent/skills/tiktok-script-skill.md` | Viết hook — đọc L3 section "6 Kiểu Hook Chuẩn" trong tiktok-script-skill |
| `[human-voice-writer]` | `.agent/skills/tiktok-script-skill.md` | Chuyển văn viết → văn nói — đọc L2 "Nguyên Tắc Bất Biến" |
| `[body-writer]` | `.agent/skills/tiktok-script-skill.md` | Viết body — đọc L3 "Đặc Thù Từng Trụ Cột" |
| `[cta-writer]` | `.agent/skills/tiktok-script-skill.md` | Viết CTA — đọc L2 "CTA 3 Tầng" |
| `[tiktok-viral-hook]` (KTVV) | `.agent/skills/tiktok-script-skill.md` | Alias của `[hook-writer]` |
| `[tiktok-body-writer]` (KTVV) | `.agent/skills/tiktok-script-skill.md` | Alias của `[body-writer]` |
| `[tiktok-cta-writer]` (KTVV) | `.agent/skills/tiktok-script-skill.md` | Alias của `[cta-writer]` |
| `[human-voice]` (KTVV) | `.agent/skills/tiktok-script-skill.md` | Alias của `[human-voice-writer]` |
| `[human-voice-filter]` (ABLA) | ABLA Phase 2 "Lớp 2" + `tiktok-script-skill.md` | Chuẩn giọng An Bình inline + L2 "Nguyên Tắc Bất Biến" + L3 "Anti-Patterns" |
| `[oral-communication-filter]` (Case P8) | `.agent/skills/tiktok-script-skill.md` | = `[human-voice-writer]` + mô tả inline Case Phase 8 |
| `[human-authenticity-scorer]` | `.agent/skills/tiktok-script-skill.md` | L4 "10 Tiêu Chí Checklist" + mô tả inline (Score /100) |
| `[tiktok-policy-scanner]` | `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/2026-04-18-tu-cam-tiktok-tai-chinh-do-manh.md` | Danh sách từ cấm TikTok tài chính + mô tả inline |
| `[channel-fit-validator]` | `VJ/VJ-[tên]/VJ-01-Atomic/strategy/` (= `[CHANNEL STRATEGY]`) + `VJ/VJ-[tên]/VJ-MOC/MOC-VJ-[tên].md` | Fit Score /100 theo mô tả inline |
| `[dna-filter]` (Case P8) | `VJ/VJ-[tên]/VJ-MOC/MOC-VJ-[tên].md` | DNA kênh + mô tả inline |
| `[macro-context]` (Case P2) | `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` + `/BDS/` | Vĩ mô thời điểm vay |
| `[ethos-credibility-analyzer]` (News 1.3) | `TD-TraDa/TD-01-Atomic/L1-Framework/` | Uy tín nguồn |
| `[stakeholder-impact-mapper]` (News 1.5) | `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` | Tác động ngân hàng / người vay |
| `[viewer-sentiment-analysis]` (News 2.1) | `TD-TraDa/TD-01-Atomic/L4-PDCA/` | Viewer sentiment |

**Skill INLINE** (không có file — làm đúng mô tả tại bước `GỌI` trong workflow, không tự bịa thêm):
- News: `news-context-synthesizer` (1.1) · `event-timeline-builder` (1.2) · `root-cause-analyzer` (1.4) · `historical-comparator` (1.6) · `synthesizing-viewpoints` (1.7) · `forecast-synthesizer` (1.8) · `angle-generator` (2.2) · `angle-scorer` (2.3)
- Case Study: `time-builder` (P2) · `story-arc` (P3) · `broll-mapper` (P7) · `non-public-filter` (P9)
- Chung: `title-writer` · `caption-hashtag-writer`

**Không phải skill:** `[ma-ho-so-an-danh]`, `[topic-slug]` — placeholder điền tên.

**Đã gỡ (2026-10-30):** `[ablaai-script]` → Claude tự chạy 4C Check ABLA P3 · `[15-content-formulas]`, `[viral-pattern-analysis]` (`references/*.md` không tồn tại) → dùng `tiktok-script-skill` L3 "Công Thức Theo Funnel" + `CC-…/L2-KienThucNghe/2026-04-10-the-kenh-tai-chinh-l2-content-angles.md`.

**Còn mở:** các chỗ "file gốc trên Lark Docs" (ABLA P2 ×2, KTVV P1/P2) — nội dung chưa đưa vào vault; agent phải hỏi VJ dán vào.

> **Hook length (đã thống nhất 2026-10-30):** câu hook mở đầu ≤10 từ (HARD RULE); cả đoạn hook + pull-up 20–40 từ. Ngưỡng SUCCESS: ≥4/6.
>
> **Script length (cập nhật 2026-10-30):** KHÔNG có độ dài chung — mỗi VJ × format có khoảng riêng (VD Thuỷ tips 180–280, An Bình news 350–550). Nguồn duy nhất: `tiktok-script-skill` L3 "Độ Dài Theo Kênh × Format". Mỗi 60–80 từ có 1 câu hỏi/cú lật.

> **Thứ tự bắt buộc khi viết script:**
> 1. Fetch `tiktok-script-skill.md` → đọc toàn bộ
> 2. Fetch `_RULE-[vj]-[format].md` của kênh → đọc toàn bộ
> 3. Viết hook → đếm từ (≤10 từ) → fetch `success-framework-scorer.md` → chấm điểm
> 4. Chỉ tiếp tục nếu hook đạt ≥4/6 SUCCESS
> 5. Viết body + CTA theo đúng _RULE của kênh
Dùng cho cả VJ và Shared (thay đổi YAML `branch` tương ứng).
