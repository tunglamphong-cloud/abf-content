# ABF Skill Registry — tên skill trong workflow → nơi định nghĩa

> Khi workflow ghi `GỌI: [skill-name]` → tra bảng này để biết đọc ở đâu.
> Base raw URL: `https://raw.githubusercontent.com/tunglamphong-cloud/abf-content/main/`
> Fallback local: `C:\Users\Lenovo\Downloads\ABF-Vault\` (cùng path tương đối)
>
> Loại:
> - **FILE** — có file skill riêng trong vault → BẮT BUỘC đọc file trước khi thực thi
> - **ALIAS** — trỏ về 1 section của file skill khác
> - **INLINE** — chỉ định nghĩa bằng mô tả ngay tại bước `GỌI` trong workflow → làm đúng mô tả đó, không tự bịa thêm
> - **⚠️ MISSING** — workflow gọi nhưng không có định nghĩa → dùng phương án thay thế ghi trong cột Ghi chú và báo VJ

## Skill có file thật (4)

| Skill | Path | Claude Code skill |
|---|---|---|
| `content-brainstorm` | `.agent/skills/content-brainstorm.md` | `/abf-brainstorm` — chạy TRƯỚC workflow, không do workflow gọi |
| `tiktok-script-skill` | `.agent/skills/tiktok-script-skill.md` | `/tiktok-script-skill` |
| `success-framework-scorer` | `.agent/skills/success-framework-scorer.md` | `/success-framework-scorer` |
| `raw-file-atomizer` | `.agent/skills/raw-file-atomizer/SKILL.md` (+ `references/`, `examples/`) | `/raw-file-atomizer` |

## ALIAS — trỏ về tiktok-script-skill

| Skill gọi | Workflow | Đọc section |
|---|---|---|
| `hook-writer` | News P3, Case P5 | L3 "6 Kiểu Hook Chuẩn" + L2 nguyên tắc ① (hook ≤10 từ) |
| `body-writer` | News P4, Case P6 | L3 "Đặc Thù Từng Trụ Cột" + "Cấu Trúc Script Bắt Buộc" |
| `cta-writer` | News P4, Case P6 | L2 "CTA 3 Tầng" |
| `human-voice-writer` | News P4.5 | L2 "6 Nguyên Tắc Bất Biến" + L3 "Anti-Patterns" |
| `tiktok-viral-hook` | KTVV P3 | = `hook-writer` (tên khác — đã map trong VAULT-STRUCTURE-REF) |
| `tiktok-body-writer` | KTVV P3 | = `body-writer` |
| `tiktok-cta-writer` | KTVV P3 | = `cta-writer` |
| `human-voice` | KTVV P3.5 | = `human-voice-writer` |
| `human-voice-filter` | ABLA P2 | Định nghĩa INLINE ở ABLA "Lớp 2" + bổ sung bằng `human-voice-writer` |
| `oral-communication-filter` | Case P8 | = `human-voice-writer` + mô tả inline tại Case P8 |
| `human-authenticity-scorer` | Case P6.5/P10, News P5 | L4 "10 Tiêu Chí Checklist" + mô tả inline (Score /100) |

## INLINE — định nghĩa bằng mô tả trong workflow

| Skill | Workflow · Bước |
|---|---|
| `news-context-synthesizer` | News 1.1 |
| `event-timeline-builder` | News 1.2 |
| `ethos-credibility-analyzer` | News 1.3 (bắt buộc, song song 1.2) — vault: `TD-TraDa/TD-01-Atomic/L1-Framework/` |
| `root-cause-analyzer` | News 1.4 |
| `stakeholder-impact-mapper` | News 1.5 — vault: `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` |
| `historical-comparator` | News 1.6 |
| `synthesizing-viewpoints` | News 1.7 |
| `forecast-synthesizer` | News 1.8 |
| `viewer-sentiment-analysis` | News 2.1 — vault: `TD-TraDa/TD-01-Atomic/L4-PDCA/` |
| `angle-generator` | News 2.2 (STEPPS + 3Us) |
| `angle-scorer` | News 2.3 |
| `title-writer` | News 4.3, Case 6.3 |
| `caption-hashtag-writer` | News 4.4, Case 6.4 |
| `tiktok-policy-scanner` | News P5, Case P10 — từ cấm: `CC-ContentCreator/CC-01-Atomic/L3-KienThucDacThu/2026-04-18-tu-cam-tiktok-tai-chinh-do-manh.md` |
| `channel-fit-validator` | News P5, Case P10 — đối chiếu `[CHANNEL STRATEGY]` |
| `time-builder` | Case P2 |
| `macro-context` | Case P2 — vault: `TD-TraDa/TD-01-Atomic/L3-KienThucDacThu/TC/` + `/BDS/` |
| `story-arc` | Case P3 (khung 8 yếu tố) |
| `broll-mapper` | Case P7 (nhánh theo `broll_mode` A/B) |
| `dna-filter` | Case P8 — DNA: `VJ/VJ-[tên]/VJ-MOC/MOC-VJ-[tên].md` |
| `non-public-filter` | Case P9 |

## ✅ Đã sửa trong vault (2026-10-30)

- `ablaai-script` → gỡ; ABLA P3 ghi rõ Claude tự chạy 4C Check.
- `15-content-formulas`, `viral-pattern-analysis` → gỡ; ABLA trỏ về `tiktok-script-skill` L3 "Công Thức Theo Funnel" + `CC-…/L2-KienThucNghe/2026-04-10-the-kenh-tai-chinh-l2-content-angles.md` + `CC-…/L3-KienThucDacThu/2026-04-10-research-tiktok-mau-huyen-le-p1.md`.
- Alias KTVV + toàn bộ skill INLINE → đã map trong `.agent/rules/VAULT-STRUCTURE-REF.md`.
- Hook: câu mở đầu ≤10 từ, cả đoạn hook + pull-up 20–40 từ (News P3, Case P5). SUCCESS: fail khi <4/6.
- Độ dài script: bỏ chuẩn chung 500–700 từ → bảng riêng theo VJ × format trong `tiktok-script-skill` L3 "Độ Dài Theo Kênh × Format"; mỗi 60–80 từ 1 câu hỏi/cú lật.
- Case Study Phase 0 (B-roll) → ghi ngoại lệ trong CLAUDE.md + đầu Phase 0 workflow.
- "GEMINI" → Claude / CLAUDE.md trong workflow. Case Study "Skills gọi" đã điền đủ.

## ⚠️ Còn mở

| Tài nguyên | Workflow | Cách xử lý |
|---|---|---|
| "file gốc trên Lark Docs" | ABLA P2 (×2), KTVV P1, P2 | Không truy cập được → hỏi VJ dán nội dung, KHÔNG tự bịa |

## Không phải skill (placeholder)

`[ma-ho-so-an-danh]`, `[topic-slug]` — là biến điền tên, không phải skill.
