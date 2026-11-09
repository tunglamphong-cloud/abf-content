---
name: "nmb-202610200909-skill-nmb-nmb-video-ban-tin-skill-md-video-doc-9-16-diem-tin"
title: "Skill NMB \"nmb-video-ban-tin\" (SKILL.md): video dọc 9:16 điểm tin BĐS từ bài báo, giọng Vbee Mậu Bảo 1"
type: framework
branch: Shared
layer: L3
subtype: nmb-hub-import
topics: ["nmb-hub", "skill", "nmb-video-ban-tin", "video"]
status: raw
created: 2026-10-20
source: "AGSMem #30947 (2026-10-17)"
nmb_ref: "~/.nmb-zalo/tat-ca/chung/ky-nang/202610200909-skill-nmb-nmb-video-ban-tin-skill-md-video-doc-9-16-diem-tin.md"
nmb_ma_so: 40
confidence: medium
verified: false
related: ["[[MOC-NMB-Hub]]"]
maturity: seed
review_interval: 30
next_review: 2026-12-09
reuse_count: 0
evolution_log: ["2026-11-09: import từ NMB Hub (nguyên văn, chưa chuyển ngữ cảnh ABF)"]
---
# Skill NMB "nmb-video-ban-tin" (SKILL.md): video dọc 9:16 điểm tin BĐS từ bài báo, giọng Vbee Mậu Bảo 1

*Tài liệu gốc:* 30947.md (56 KB, đính kèm tại _tai-lieu/202610200909-30947.md)

Bản SKILL.md/tài liệu dài 52868 ký tự từ AGSMem #30947 (2026-10-17); skill cùng tên đã cài trong Claude Code của máy này. Đọc file gốc trong _tai-lieu khi cần chi tiết.

---

---
name: "nmb-video-ban-tin"
description: "Dựng video dọc 9:16 điểm tin BĐS thương hiệu NMB từ bài báo: trang báo cuộn chuột, highlight, zoom, thẻ số liệu, phụ đề, giọng Vbee Mậu Bảo 1, nhạc nền, hiệu ứng âm thanh."
---

# Video bản tin BĐS NMB (giọng Mậu Bảo 1)

Dùng khi anh Bảo muốn làm video bản tin / điểm tin thị trường từ các bài báo. Trả lời anh bằng tiếng Việt, ngắn gọn.

**Kết quả:** MP4 1080×1920, 30fps, 50–70 giây, âm lượng −15 LUFS. Gồm: **khung hình đầu tiên đã là HOOK** (ảnh thật + tiêu đề + câu hook hiện sẵn từ giây 0, giọng vào ngay, không mờ dần) → 3 con số trượt vào → mỗi bài một cảnh (cửa sổ trình duyệt, trang báo cuộn như lăn chuột, con trỏ, highlight vàng quét đúng lúc giọng đọc, zoom vào câu, thẻ số liệu bật lên) → "Lời khuyên của tôi" (3 ô tích + câu chốt) → kết NMB. Phụ đề có số màu vàng, nhạc nền nhẹ tự hạ khi có giọng, tiếng vút / lăn chuột / bút dạ / pop / ding. Kèm zip ảnh trang báo và 3 bản caption Facebook.

**Thời gian chuẩn:** 15–25 phút khi Vbee đã đăng nhập sẵn. Riêng bước xuất video mất khoảng 6 phút cho 55 giây.

## Chuẩn bị (nhắc anh ngay từ đầu)
- Phiên phải nối với **máy công ty**. Dùng Claude in Chrome (tải các tool `mcp__claude-in-chrome__*` bằng ToolSearch) trên trình duyệt có `onThisComputer`. Các tool `mcp__remote-devices__device_*` dùng để lấy file.
- **Vbee phải đăng nhập sẵn** trên Chrome đó (studio.vbee.vn). Không bao giờ nhập mật khẩu thay anh. Nếu chưa đăng nhập: nhắn anh đăng nhập, trong lúc chờ thì dựng phần hình.
- Nhắc anh: trong khoảng 10 phút chụp trang, **mở cửa sổ Chrome khác (Ctrl+N)** để làm việc, đừng chuyển tab trong cửa sổ đang chụp (tab bị ẩn thì ảnh chụp bị treo).
- Máy chủ của mình **không vào được trang báo** (proxy chặn): đọc nội dung bằng WebFetch, chụp ảnh bằng Chrome trên máy anh.

## Quy trình

### 1. Chọn bài và ý chính
- Mở `vneconomy.vn/dia-oc.htm` trong tab mới. Lấy danh sách bài bằng JS: lấy các link `.htm` có tiêu đề dài hơn 35 ký tự.
- Đọc 4–6 bài bằng WebFetch (ngày đăng, số liệu, nguồn). Chọn 4 bài, mỗi bài 1–3 cụm số liệu để highlight.
- Cụm highlight phải nằm gọn trong **một text node** (không vắt qua `<strong>`/`<span>`). Kiểm tra bằng `__vs.setup([...])`: cụm nào trả về `false` thì rút ngắn lại.

### 2. Kịch bản (gửi anh duyệt trước khi tạo giọng, để không tốn ký tự Vbee)
- 7 đoạn: (0) **HOOK**: câu đầu tiên nói ngay mâu thuẫn hoặc con số gây tò mò (2–3 giây đầu, không chào hỏi, không dạo đầu), rồi "theo tạp chí Kinh tế Việt Nam"; (1–4) mỗi bài một đoạn 2–3 câu; (5) "Lời khuyên của tôi:" 3 ý + câu chốt; (6) "Tôi là Mậu Bảo. Theo dõi NMB, để không mua sai bất động sản."
- Lời đọc: số viết bằng chữ ("hai mươi mốt phần trăm"); câu ngắn có dấu phẩy để Vbee ngắt; tổng khoảng 1.000–1.100 ký tự, tức 52–60 giây.
- Phụ đề (`cap`) dùng chữ số (21%, 92.000). Mỗi đoạn tách 2–5 cụm theo dấu câu.
- Chữ to ở cảnh mở đầu (`kick`, `lines`, `gold`, `sub`) phải khớp đúng câu hook đang đọc; `sub` là câu hook ngắn (vd "Hàng nhiều – người mua ít"), sẽ được gạch chân vàng đúng lúc giọng đọc tới. Mỗi dòng chữ to ≤ 12 ký tự (dài hơn khung tự thu nhỏ chữ).
- Không hứa lợi nhuận. Số liệu phải đúng với bài. Nhắc giá dự án thì ghi "đã VAT, chưa KPBT". Tên "Onsen Sky Garden" viết phiên âm "on sen sờ kai ga đần" trong lời đọc.

### 3. Chụp trang báo (mỗi bài a1…a4)
1. Mở bài bằng `navigate`. Gọi `javascript_tool`: dán nguyên **helper.js** rồi chạy `JSON.stringify(__vs.setup(["cụm 1","cụm 2"]))`. Kết quả phải toàn `:true`.
2. Cuộn trước để ảnh tải hết: lặp `scrollTo(0,Y); 1` (JS đồng bộ) + `computer wait 1`, cuộn quá vị trí cụm cuối. **Không dùng async/Promise trong batch**, vì lệnh chụp sẽ chạy trước khi cuộn xong.
3. Chạy `scrollTo(0,0); JSON.stringify(__vs.info())` để lấy `iw, ih, textLeft, textW, titleTop, marks`.
4. Tính vùng chụp: FW×FH là khung toạ độ của ảnh chụp màn hình (vd 1568×698), k = FW/iw. `region = [(textLeft-30)*k, 0, (textLeft+textW+30)*k, FH]`. Ảnh lưu ra rộng ≈ textW+60 (khoảng 1040), cao = ih. Nếu không đúng 1040 thì resize về 1040 trước khi chạy prep.
5. Vị trí cuộn: y0 = titleTop−60, sau đó y0+ih, y0+2ih… liên tiếp, cho tới khi qua cụm cuối. Được phép nhảy cóc tới đoạn xa (vd y=6700); trong video, chỗ nối sẽ cuộn nhanh có mờ chuyển động.
6. Ảnh sạch: `__vs.hl(false); scrollTo(0,y); scrollY` → `wait 1` → `computer zoom` với region, `save_to_disk:true`, **`scale:1`** (scale nhỏ thì file lưu cũng nhỏ theo). Tối đa 2 ảnh mỗi batch.
7. Ảnh highlight (chỉ những ảnh có cụm): `__vs.hl(true)`, cùng vị trí y, `scale:0.4` là đủ vì chỉ dùng để dò màu vàng.
8. File nằm ở `/tmp/claude-chrome-screenshots-*/`. Chép về `shots/<art>_<i>.png` và `shots/<art>_<i>_hl.png`.
9. Đáy ảnh có thanh tối (thanh cố định của trang) thì khai báo `crop` trong config (vd 840).
10. Gặp lỗi `Page.captureScreenshot timed out` là do tab bị ẩn: nhắc anh, rồi chụp lại đúng ảnh đó.
- Ảnh nền `hero1/2/3.jpg` (mở đầu / lời khuyên / kết): cắt phần ảnh lớn của bài từ ảnh chụp, vd `Image.open(...).convert('RGB').crop((0,0,1040,550))`.

### 4. Giọng Vbee "Mậu Bảo 1"
- Vào `studio.vbee.vn/studio/text-to-speech`, đóng popup, bấm ô chọn giọng (góc trái trên) → tab **Giọng của tôi** → **Mậu Bảo 1** → Sử dụng.
- Bấm vào ô soạn thảo, `computer type` kịch bản (mỗi đoạn một dòng). Gõ dài thì trang có thể đơ 20–30 giây: chờ, rồi chụp màn hình kiểm tra đủ chữ.
- Bấm **Tạo audio** (≈1 điểm/ký tự), chờ khoảng 15 giây, bấm **Tải xuống**, file MP3 về thư mục Downloads.
- Gọi `device_request_folder_access ~/Downloads` → `device_list_dir` tìm MP3 mới nhất (tên file theo câu đầu) → `device_stage_files` → chép thành `voice.mp3`.

### 5. Đo thời gian giọng
- `ffprobe` để lấy `voice_duration`.
- Chạy `ffmpeg -i voice.mp3 -af silencedetect=noise=-35dB:d=0.12 -f null -`. Khoảng lặng ≈0,85s là hết đoạn; ≈0,2–0,45s là dấu phẩy/chấm.
- Để `voice_offset` = 0: file Vbee đã có sẵn ~0,1s lặng ở đầu, giọng vào ngay khung hình đầu.
- Điền config (tính theo giây của file giọng): `segments[].t` = [bắt đầu, kết thúc] từng cụm phụ đề; `beats[].t` = lúc bắt đầu nói cụm số liệu; `items_t` = lúc nói từng ý lời khuyên; `quote_t` = câu chốt; `sub_t`/`tiles_t` của mở đầu (bỏ trống thì lấy cụm 2, 3).

### 6. Dựng
- Tạo thư mục làm việc. **Ưu tiên** lấy bản khung đã lưu trên máy công ty: `(thư mục làm việc trên máy)` (`device_stage_files` rồi giải nén). Không có thì viết **đúng nguyên văn** các file ở mục "Bộ khung" bên dưới. Sau đó `cd web && npm init -y && npm install @fontsource/be-vietnam-pro @fontsource/playfair-display`.
- Viết `config.json` theo mẫu. `beats[].groups` là chỉ số dòng highlight mà `prep.py` in ra (theo thứ tự từ trên xuống; cụm dài 2 dòng thì có 2 chỉ số).
- `python3 prep.py` → `python3 build.py` → `python3 render.py frames 0,4,10,20,30,40,50`. Ghép các khung thành một ảnh và gửi anh duyệt.
- **Khung hình 0 phải là HOOK**: đủ tiêu đề + câu hook + phụ đề, không được là nền trống/mờ. Phóng to kiểm tra dấu tiếng Việt ở chữ to: dấu hỏi/ngã/sắc chồng trên mũ không bị cắt, không dính vào dòng trên.
- Anh duyệt xong mới chạy `python3 render.py video video_noaudio.mp4` (đặt timeout 600000), rồi `python3 audio.py voice.mp3 video_noaudio.mp4 <Ten_video>.mp4`.
- Kiểm tra: ffprobe ra 1080×1920, khoảng −15 LUFS; trích khung hình đầu tiên (`ffmpeg -i X.mp4 -frames:v 1 dau.jpg`) xem đã có hook chưa; trích 6–8 khung hình xem highlight có đúng câu đang đọc.
- Chưa có giọng thì vẫn dựng thử được: đặt thời gian ước lượng (≈4,3 âm tiết/giây), sau khi có giọng thì điền lại.

### 7. Giao
- Gửi MP4 + zip ảnh trang báo bằng SendUserFile (đặt tên file dễ hiểu), đồng thời `device_commit_files` vào `(thư mục làm việc trên máy)>\`.
- Viết caption Facebook 3 bản: **Phân tích đầy đủ** / **Ngắn gọn, kéo xem video** / **Chạm nỗi lo người mua**. Luôn có dòng nguồn VnEconomy, hashtag #NMB #MauBao #BanTinBDS, lời kêu gọi inbox hoặc gọi <SĐT-đã-ẩn>.
- Nhắc anh: ảnh của báo chỉ dùng cho điểm tin trên kênh, không dùng chạy quảng cáo trả tiền.

## Lỗi đã gặp – không lặp lại
- Mở đầu bằng nền mờ rồi chữ mới hiện dần, giọng chờ 0,5 giây → mất người xem ngay giây đầu. Cảnh mở đầu phải hiện đủ chữ hook từ t=0 (khung đã sửa: không fade-in, chỉ "đập" nhẹ + tiếng boom ở giây 0).
- Bọc chữ to tiếng Việt trong khung `overflow:hidden` (hiệu ứng chữ trồi lên) → cắt mất phần trên của dấu, "SẢN" thành "SÁN". Không dùng mask cho chữ to; line-height ≥ 1,2 và khoảng cách dòng ≥ 1,35 lần cỡ chữ.
- Sửa video đã giao thì xuất file mới có đuôi `_v2`, không ghi đè file anh có thể đang mở.

## Bộ khung (viết nguyên văn từng file)

### helper.js
Dán vào javascript_tool trên trang báo (selector theo VnEconomy; trang khác thì sửa MAIN/TITLE).
```javascript
(() => {
  const Z = window.__VS_ZOOM || 1.4;
  const MAIN = '.article-detail-section__main', TITLE = '.article-header__title';
  window.__vs = {
    setup(phrases) {
      if (!document.getElementById('__vs_style')) {
        const st = document.createElement('style'); st.id = '__vs_style';
        st.textContent = `mark.__hl{background:transparent;color:inherit;padding:0}
          html.__hlon mark.__hl{background:#FFE14D;box-shadow:0 0 0 2px #FFE14D}
          .article-header{max-width:700px!important;margin-left:auto!important;margin-right:auto!important}
          .side-rail,.side-rail__item,.header-fixed-bottom,.sticky-header-top__inner,header.site-header,.bg-popup,
          .popup-header-menu-main,[class*="banner"],[class*="ads"],[id*="ads"],[class*="qc"],iframe{display:none!important}`;
        document.head.appendChild(st);
        document.querySelectorAll('*').forEach(e => { const p = getComputedStyle(e).position;
          if ((p === 'fixed' || p === 'sticky') && !e.closest('article')) e.style.setProperty('display', 'none', 'important'); });
        document.body.style.zoom = Z;
      }
      const root = document.querySelector(MAIN) || document.body, found = [];
      for (const ph of phrases) {
        const w = document.createTreeWalker(root, NodeFilter.SHOW_TEXT); let n, ok = false;
        while ((n = w.nextNode())) { const i = n.nodeValue.indexOf(ph);
          if (i >= 0) { const r = document.createRange(); r.setStart(n, i); r.setEnd(n, i + ph.length);
            const m = document.createElement('mark'); m.className = '__hl'; r.surroundContents(m); ok = true; break; } }
        found.push(ph.slice(0, 30) + ':' + ok);
      }
      return found;
    },
    info() {
      const main = document.querySelector(MAIN) || document.body, title = document.querySelector(TITLE) || document.querySelector('h1');
      const ps = [...main.querySelectorAll('p')].filter(p => p.innerText.length > 60);
      const pr = ps[0].getBoundingClientRect(), tr = title.getBoundingClientRect();
      const marks = [...document.querySelectorAll('mark.__hl')].map(m => { const r = m.getBoundingClientRect(); return [Math.round(r.top + scrollY), Math.round(r.bottom + scrollY)]; });
      return { iw: innerWidth, ih: innerHeight, textLeft: Math.round(pr.left), textW: Math.round(pr.width), titleTop: Math.round(tr.top + scrollY), marks, sh: document.documentElement.scrollHeight };
    },
    hl(on) { document.documentElement.classList.toggle('__hlon', on); return on; }
  };
  return 'ok';
})();
```

### prep.py
Dò highlight + ghép ảnh.
```python
"""Bước dựng 1: tìm vùng highlight + ghép ảnh chụp thành trang dài cho từng bài.
Đầu vào : shots/<art>_<i>.png (ảnh sạch, theo thứ tự cuộn) và shots/<art>_<i>_hl.png (cùng vị trí, đã bật highlight; độ phân giải bất kỳ)
          config.json -> "articles": {"a1": {"captures": ["a1_0","a1_1"], "crop": {"a1_1": 840}}}
Đầu ra  : web/<art>.jpg + web/meta.json  (boxes = các dòng highlight theo thứ tự đọc, toạ độ trên ảnh ghép rộng 1040)"""
import json, os, sys, numpy as np
from PIL import Image
cfg = json.load(open(sys.argv[1] if len(sys.argv) > 1 else 'config.json'))

def boxes_of(hl_path, size):
    im = np.asarray(Image.open(hl_path).convert('RGB')).astype(int)
    W, H = size; sx, sy = W / im.shape[1], H / im.shape[0]
    R, G, B = im[..., 0], im[..., 1], im[..., 2]
    m = (R > 235) & (G > 200) & (G < 240) & (B < 130)          # màu #FFE14D
    rows = np.where(m.sum(1) > 20 * im.shape[1] / 1040)[0]
    bands = []
    if len(rows):
        st = pv = rows[0]
        for r in rows[1:]:
            if r - pv > 1: bands.append((st, pv)); st = r
            pv = r
        bands.append((st, pv))
    out = []
    for a, b in bands:
        if (b - a + 1) * sy < 20: continue
        cols = np.where(m[a:b + 1].mean(0) > 0.5)[0]
        if len(cols): out.append([round(cols.min() * sx), round(a * sy), round((cols.max() + 1) * sx), round((b + 1) * sy)])
    return out

meta = {}
for art, a in cfg['articles'].items():
    ims, offs, boxes, y = [], {}, [], 0
    for c in a['captures']:
        im = Image.open(f'shots/{c}.png').convert('RGB')
        if c in a.get('crop', {}): im = im.crop((0, 0, im.width, a['crop'][c]))
        offs[c] = y
        if os.path.exists(f'shots/{c}_hl.png'):
            for b in boxes_of(f'shots/{c}_hl.png', Image.open(f'shots/{c}.png').size):
                if b[3] <= im.height: boxes.append([b[0], b[1] + y, b[2], b[3] + y])
        ims.append(im); y += im.height
    tall = Image.new('RGB', (1040, y), 'white')
    for c, im in zip(a['captures'], ims): tall.paste(im, (0, offs[c]))
    tall.save(f'web/{art}.jpg', quality=92)
    meta[art] = {'h': y, 'boxes': boxes}
    print(art, 'cao', y, 'px |', len(boxes), 'dòng highlight:', [(i, b[1]) for i, b in enumerate(boxes)])
json.dump(meta, open('web/meta.json', 'w'), indent=1)
```

### build.py
Dựng timeline từ config.
```python
"""Bước dựng 2: config.json (+ web/meta.json) -> web/timeline.json, web/timeline.js, sfx_events.json.
Mọi mốc thời gian trong config tính theo file giọng (giây); build tự cộng voice_offset."""
import json, sys
cfg = json.load(open(sys.argv[1] if len(sys.argv) > 1 else 'config.json'))
meta = json.load(open('web/meta.json'))
V = cfg.get('voice_offset', 0.0)  # 0: giọng vào ngay (file Vbee đã có sẵn ~0,1s lặng ở đầu)
total = round(cfg['voice_duration'] + V + cfg.get('tail', 1.8), 2)
paras = cfg['paragraphs']
starts = [p['segments'][0]['t'][0] + V for p in paras]
scenes, caps, sfx = [], [], []
for i, p in enumerate(paras):
    segs = [(s['t'][0] + V, s['t'][1] + V, s['cap']) for s in p['segments']]
    caps += [dict(t0=a, t1=b, text=c) for a, b, c in segs]
    s0 = 0 if i == 0 else starts[i] - 0.35
    s1 = total if i == len(paras) - 1 else starts[i + 1] - 0.35
    sc = dict(p['scene']); sc.update(i=i, t0=s0, t1=s1); typ = sc['type']
    if typ == 'intro':
        sc['sub_t'] = sc['sub_t'] + V if 'sub_t' in sc else (segs[1][0] if len(segs) > 1 else 1.5)
        sc['tiles_t'] = sc['tiles_t'] + V if 'tiles_t' in sc else (segs[2][0] if len(segs) > 2 else 3.0)
        sfx += [('boom', 0.0)]  # tiếng "đập" đúng khung hình đầu cùng chữ hook
    elif typ == 'article':
        m = meta[sc['art']]; sc['h'] = m['h']
        for b in sc['beats']:
            b['t'] = b['t'] + V
            b['boxes'] = [m['boxes'][g] for g in b['groups']]
            sfx.append(('scroll', b['t'] - 0.9))
            sfx += [('marker', b['t'] + j * 0.45) for j in range(len(b['boxes']))]
            sfx.append(('pop', b['t'] + 0.25 + 0.45 * (len(b['boxes']) - 1)))
        sfx.append(('whoosh', s0))
    elif typ == 'advice':
        sc['items_t'] = [t + V for t in sc['items_t']]; sc['quote_t'] = sc['quote_t'] + V
        sfx.append(('whoosh', s0)); sfx += [('ding', t + 0.1) for t in sc['items_t']]; sfx.append(('pop', sc['quote_t'] + 0.1))
    else:
        sfx += [('whoosh', s0), ('boom', s0 + 0.5)]
    scenes.append(sc)
caps[0]['t0'] = 0.0  # phụ đề đầu tiên có sẵn ở khung hình 0
tl = dict(total=total, voice_offset=V, date=cfg['date'], credit=cfg['credit'], brand=cfg.get('brand', {}), scenes=scenes, caps=caps)
json.dump(tl, open('web/timeline.json', 'w'), ensure_ascii=False, indent=1)
open('web/timeline.js', 'w').write('window.TL=' + json.dumps(tl, ensure_ascii=False) + ';')
json.dump(sfx, open('sfx_events.json', 'w'))
print('tổng', total, 's |', [(s['type'], round(s['t0'], 2), round(s['t1'], 2)) for s in scenes])
```

### render.py
Xuất khung hình / video không tiếng.
```python
"""Bước dựng 3: python3 render.py frames 4,12.5,30  -> preview_<t>.jpg
               python3 render.py video video_noaudio.mp4  (30fps, ~6 phút cho 55 giây)"""
import json, sys, subprocess, os, time
from playwright.sync_api import sync_playwright
D = os.path.dirname(os.path.abspath(__file__))
tl = json.load(open(f'{D}/web/timeline.json'))
FPS = 30
with sync_playwright() as p:
    b = p.chromium.launch(args=['--allow-file-access-from-files'])
    pg = b.new_page(viewport={'width': 1080, 'height': 1920}, device_scale_factor=1)
    pg.goto('file://' + D + '/web/index.html')
    pg.wait_for_function('document.fonts.ready.then(()=>true)')
    pg.wait_for_function('[...document.images].every(i=>i.complete && i.naturalWidth>0)')
    time.sleep(0.5)
    if sys.argv[1] == 'frames':
        for t in sys.argv[2].split(','):
            pg.evaluate(f'render({t})'); pg.screenshot(path=f'{D}/preview_{t}.jpg', type='jpeg', quality=85)
    else:
        n = int(tl['total'] * FPS)
        ff = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'image2pipe', '-framerate', str(FPS), '-i', '-',
                               '-c:v', 'libx264', '-preset', 'medium', '-crf', '18', '-pix_fmt', 'yuv420p', sys.argv[2]], stdin=subprocess.PIPE)
        t0 = time.time()
        for i in range(n):
            pg.evaluate(f'render({i / FPS})')
            ff.stdin.write(pg.screenshot(type='jpeg', quality=92))
            if i % 300 == 0: print(i, '/', n, round(time.time() - t0), 's', flush=True)
        ff.stdin.close(); ff.wait()
    b.close()
```

### audio.py
Nhạc nền + hiệu ứng + trộn giọng + ghép tiếng.
```python
"""Bước dựng 4: python3 audio.py voice.mp3 video_noaudio.mp4 KET_QUA.mp4
Tự tạo nhạc nền nhẹ (tự hạ khi có giọng) + hiệu ứng âm thanh theo sfx_events.json, trộn với giọng, chuẩn hoá -15 LUFS và ghép vào video."""
import json, sys, numpy as np
from scipy.io import wavfile
from scipy.signal import butter, sosfilt, sosfiltfilt

SR = 44100
rng = np.random.default_rng(7)

def env_adsr(n, a, d, s, r):
    a, d, r = int(a * SR), int(d * SR), int(r * SR)
    e = np.ones(n) * s
    e[:a] = np.linspace(0, 1, a)
    e[a:a + d] = np.linspace(1, s, d)[:max(0, min(d, n - a))]
    if r: e[-r:] *= np.linspace(1, 0, r)
    return e

def lp(x, f, o=2): return sosfilt(butter(o, f, 'low', fs=SR, output='sos'), x)
def hp(x, f, o=2): return sosfilt(butter(o, f, 'high', fs=SR, output='sos'), x)
def bp(x, f1, f2, o=2): return sosfilt(butter(o, [f1, f2], 'band', fs=SR, output='sos'), x)
def midi(m): return 440 * 2 ** ((m - 69) / 12)

def music(total):
    n = int(total * SR); out = np.zeros(n)
    bpm = 84; beat = 60 / bpm; bar = 4 * beat
    # Fmaj7 - Em7 - Dm7 - Cmaj7(add9)
    chords = [[53, 57, 60, 64], [52, 55, 59, 62], [50, 53, 57, 60], [48, 55, 59, 62]]
    t = 0; ci = 0
    while t < total:
        ch = chords[ci % 4]; dur = 2 * bar
        i0 = int(t * SR); m = min(int(dur * SR) + int(1.0 * SR), n - i0)
        if m <= 0: break
        tt = np.arange(m) / SR
        pad = np.zeros(m)
        for k, note in enumerate(ch):
            f = midi(note + 12 if k > 0 else note)
            for det in (-0.12, 0.12):
                ff = f * 2 ** (det / 12)
                pad += 0.5 * np.sin(2 * np.pi * ff * tt) + 0.12 * np.sin(4 * np.pi * ff * tt)
        pad *= env_adsr(m, 1.2, 0.5, 0.8, 1.2) * 0.05
        out[i0:i0 + m] += lp(pad, 2200)
        # bass
        bt = np.arange(min(int(dur * SR), n - i0)) / SR
        bass = np.sin(2 * np.pi * midi(ch[0] - 12) * bt) * np.exp(-bt * 0.6) * 0.09
        out[i0:i0 + len(bass)] += bass
        # arpeggio plucks (eighths)
        arp = [ch[0] + 24, ch[2] + 12, ch[3] + 12, ch[1] + 24, ch[2] + 24, ch[3] + 12, ch[1] + 12, ch[2] + 24]
        for k in range(16):
            st = t + k * beat / 2
            if st >= total: break
            j0 = int(st * SR); L = min(int(0.6 * SR), n - j0)
            pt = np.arange(L) / SR; f = midi(arp[k % 8])
            pl = (np.sin(2 * np.pi * f * pt) + 0.3 * np.sin(4 * np.pi * f * pt)) * np.exp(-pt * 7) * (0.035 if k % 2 == 0 else 0.025)
            out[j0:j0 + L] += pl
        # soft kick + shaker
        for k in range(8):
            st = t + k * beat
            if st >= total: break
            j0 = int(st * SR)
            if k % 2 == 0:
                L = min(int(0.25 * SR), n - j0); kt = np.arange(L) / SR
                kick = np.sin(2 * np.pi * (55 + 60 * np.exp(-kt * 30)) * kt) * np.exp(-kt * 14) * 0.10
                out[j0:j0 + L] += kick
            j1 = int((st + beat / 2) * SR); L = min(int(0.06 * SR), n - j1)
            if L > 0:
                sh = hp(rng.standard_normal(L), 6000) * np.exp(-np.arange(L) / SR * 60) * 0.012
                out[j1:j1 + L] += sh
        t += dur; ci += 1
    # fade in / out
    fi = int(0.3 * SR); fo = int(2.5 * SR)  # vào nhanh: video mở bằng hook, không có đoạn dạo đầu
    out[:fi] *= np.linspace(0, 1, fi); out[-fo:] *= np.linspace(1, 0, fo)
    return out

def sfx(kind):
    if kind == 'whoosh':
        L = int(0.55 * SR); t = np.arange(L) / SR
        x = rng.standard_normal(L)
        e = np.sin(np.pi * t / t[-1]) ** 2
        # sweeping band: crossfade two bands
        lo = bp(x, 300, 1200); hi = bp(x, 1500, 5000)
        w = t / t[-1]
        return (lo * (1 - w) + hi * w) * e * 0.35
    if kind == 'riser':
        L = int(1.0 * SR); t = np.arange(L) / SR
        f = 200 + 900 * (t / t[-1]) ** 2
        s = np.sin(2 * np.pi * np.cumsum(f) / SR) * 0.08 + bp(rng.standard_normal(L), 800, 6000) * 0.12 * (t / t[-1])
        return s * (t / t[-1]) ** 1.5
    if kind == 'boom':
        L = int(1.2 * SR); t = np.arange(L) / SR
        s = np.sin(2 * np.pi * (45 + 40 * np.exp(-t * 8)) * t) * np.exp(-t * 3.5) * 0.45
        s += lp(rng.standard_normal(L), 400) * np.exp(-t * 12) * 0.25
        return s
    if kind == 'scroll':
        L = int(0.9 * SR); s = np.zeros(L)
        for k in range(9):
            j = int((0.05 + k * 0.09 + rng.uniform(-0.01, 0.01)) * SR)
            cl = int(0.012 * SR); ct = np.arange(cl) / SR
            click = bp(rng.standard_normal(cl), 1800, 4500) * np.exp(-ct * 600) * 0.5
            click += np.sin(2 * np.pi * 2600 * ct) * np.exp(-ct * 900) * 0.25
            s[j:j + cl] += click[:max(0, min(cl, L - j))]
        return s
    if kind == 'marker':
        L = int(0.42 * SR); t = np.arange(L) / SR
        x = bp(rng.standard_normal(L), 2500, 7000)
        e = np.minimum(1, t / 0.03) * np.exp(-np.maximum(0, t - 0.3) * 30)
        am = 0.7 + 0.3 * np.sin(2 * np.pi * 23 * t)
        return x * e * am * 0.18
    if kind == 'pop':
        L = int(0.18 * SR); t = np.arange(L) / SR
        f = 520 + 520 * np.minimum(1, t / 0.05)
        s = np.sin(2 * np.pi * np.cumsum(f) / SR) * np.exp(-t * 26) * 0.35
        s[:int(0.004 * SR)] += rng.standard_normal(int(0.004 * SR)) * 0.2
        return s
    if kind == 'ding':
        L = int(1.2 * SR); t = np.arange(L) / SR
        s = sum(a * np.sin(2 * np.pi * f * t) * np.exp(-t * d) for f, a, d in [(1318.5, .30, 4), (2637, .12, 6), (3955, .05, 9), (1975.5, .08, 5)])
        return s * 0.6
    raise ValueError(kind)

def place(buf, x, t, gain=1.0):
    i = int(t * SR)
    if i < 0: x = x[-i:]; i = 0
    m = min(len(x), len(buf) - i)
    if m > 0: buf[i:i + m] += x[:m] * gain

def read_wav(p):
    sr, x = wavfile.read(p)
    x = x.astype(np.float64)
    if x.ndim > 1: x = x.mean(1)
    x /= 32768.0
    assert sr == SR, sr
    return x

if __name__ == '__main__':
    import subprocess
    voice_mp3, vid, out = sys.argv[1:4]
    tl = json.load(open('web/timeline.json')); total = tl['total']; off = int(tl.get('voice_offset', 0.5) * 1000)
    subprocess.run(['ffmpeg', '-y', '-loglevel', 'error', '-i', voice_mp3, '-af', f'adelay={off}|{off}', '-ac', '1', '-ar', str(SR), 'voice_off.wav'], check=True)
    events = json.load(open('sfx_events.json'))
    n = int(total * SR); voice = np.zeros(n)
    v = read_wav('voice_off.wav'); voice[:min(n, len(v))] = v[:n]
    mus = music(total)
    env = np.abs(voice); env = sosfiltfilt(butter(1, 3, 'low', fs=SR, output='sos'), env); env = env / (env.max() + 1e-9)
    duck = 1 - 0.55 * np.clip(env * 4, 0, 1)
    fx = np.zeros(n)
    G = dict(whoosh=0.9, riser=0.9, boom=0.8, scroll=0.55, marker=0.6, pop=0.6, ding=0.45)
    for kind, t in events: place(fx, sfx(kind), t, G[kind])
    mix = voice + mus * duck * 0.9 + fx * 0.75
    peak = np.abs(mix).max(); mix = mix / peak * 0.89 if peak > 0.89 else mix
    wavfile.write('mix.wav', SR, (mix * 32767).astype(np.int16))
    subprocess.run(['ffmpeg', '-y', '-loglevel', 'error', '-i', vid, '-i', 'mix.wav', '-af', 'loudnorm=I=-15:TP=-1.5:LRA=11',
                    '-c:v', 'copy', '-c:a', 'aac', '-b:a', '192k', '-ar', '48000', '-shortest', '-movflags', '+faststart', out], check=True)
    print('xong', out)
```

### web/index.html
Giao diện video (đặt trong thư mục web/ cùng hero1-3.jpg).
```html
<!doctype html>
<html lang="vi">
<head>
<meta charset="utf-8">
<style>
@import url('node_modules/@fontsource/be-vietnam-pro/400.css');
@import url('node_modules/@fontsource/be-vietnam-pro/600.css');
@import url('node_modules/@fontsource/be-vietnam-pro/700.css');
@import url('node_modules/@fontsource/be-vietnam-pro/800.css');
@import url('node_modules/@fontsource/playfair-display/700.css');
@import url('node_modules/@fontsource/playfair-display/700-italic.css');
:root{--navy:#081423;--navy2:#0E2238;--gold:#F5C04A;--gold2:#FFDD7A;--up:#3DDC84;--down:#FF5C5C;--warn:#FFB020;--ink:#F4F1E8}
*{box-sizing:border-box;margin:0;padding:0}
html,body{width:1080px;height:1920px;overflow:hidden;background:var(--navy);font-family:'Be Vietnam Pro',sans-serif;color:var(--ink)}
#stage{position:absolute;inset:0;overflow:hidden}
.bg{position:absolute;inset:0;background:
 radial-gradient(900px 700px at 80% 10%,rgba(245,192,74,.16),transparent 60%),
 radial-gradient(800px 900px at 0% 100%,rgba(40,110,190,.22),transparent 60%),
 linear-gradient(180deg,#0A1A2E 0%,#071220 100%)}
.grid{position:absolute;inset:-200px;background-image:linear-gradient(rgba(255,255,255,.035) 1px,transparent 1px),linear-gradient(90deg,rgba(255,255,255,.035) 1px,transparent 1px);background-size:60px 60px}
.scene{position:absolute;inset:0;opacity:0}
/* brand bar */
#brand{position:absolute;left:50px;right:50px;top:56px;height:84px;display:flex;align-items:center;justify-content:space-between}
.badge{display:flex;align-items:center;gap:18px}
.logo{width:84px;height:84px;border-radius:20px;background:linear-gradient(135deg,var(--gold2),var(--gold));color:#0A1626;font-weight:800;font-size:30px;display:flex;align-items:center;justify-content:center;letter-spacing:1px;box-shadow:0 10px 30px rgba(245,192,74,.35)}
.bname{font-weight:700;font-size:30px;line-height:1.1}.bname small{display:block;font-weight:600;font-size:21px;color:#9FB2C8;letter-spacing:2px;text-transform:uppercase;margin-top:4px}
.date{font-weight:600;font-size:22px;color:#9FB2C8;letter-spacing:2px;text-align:right}
#progress{position:absolute;left:0;top:0;height:8px;background:linear-gradient(90deg,var(--gold),var(--gold2));width:0}
/* article */
.label{position:absolute;left:50px;top:176px;padding:16px 30px;border-radius:999px;background:rgba(245,192,74,.12);border:2px solid rgba(245,192,74,.55);color:var(--gold2);font-weight:800;font-size:34px;letter-spacing:1px;white-space:nowrap}
.browser{position:absolute;left:50px;top:278px;width:980px;height:1040px;border-radius:30px;background:#fff;overflow:hidden;box-shadow:0 40px 90px rgba(0,0,0,.55),0 0 0 2px rgba(255,255,255,.08)}
.chrome{height:84px;background:#EEF1F5;display:flex;align-items:center;gap:22px;padding:0 26px;border-bottom:1px solid #D9DEE5}
.dots{display:flex;gap:11px}.dots i{width:18px;height:18px;border-radius:50%;display:block}
.url{flex:1;height:52px;border-radius:26px;background:#fff;display:flex;align-items:center;gap:12px;padding:0 22px;color:#3B4A5C;font-size:24px;font-weight:600;white-space:nowrap;overflow:hidden}
.url b{color:#C8102E}
.vp{position:absolute;left:0;top:84px;width:980px;height:956px;overflow:hidden;background:#fff}
.zoomer{position:absolute;left:0;top:0;width:980px;height:956px;will-change:transform;transform-origin:0 0}.page{position:absolute;left:0;top:0;width:980px;will-change:transform}
.page img{display:block;width:980px}
.hl{position:absolute;background:#FFE14D;mix-blend-mode:multiply;border-radius:4px;width:0}
.cursor{position:absolute;left:0;top:0;width:54px;height:54px;filter:drop-shadow(0 6px 10px rgba(0,0,0,.35))}
.wheel{position:absolute;width:64px;height:92px;border:5px solid #1A2B40;border-radius:32px;background:rgba(255,255,255,.92);box-shadow:0 8px 24px rgba(0,0,0,.3)}
.wheel i{position:absolute;left:50%;top:14px;width:8px;height:20px;margin-left:-4px;border-radius:4px;background:#C8102E}
.wheel::after{content:'';position:absolute;left:50%;top:0;width:3px;height:34px;margin-left:-1.5px;background:#1A2B40;opacity:.25}
.fade-bottom{position:absolute;left:0;right:0;bottom:0;height:90px;background:linear-gradient(transparent,rgba(255,255,255,.95));pointer-events:none}
.callout{position:absolute;left:50px;right:50px;top:1346px;height:212px;border-radius:30px;background:linear-gradient(135deg,rgba(255,255,255,.10),rgba(255,255,255,.03));border:2px solid rgba(255,255,255,.14);display:flex;align-items:center;gap:30px;padding:0 40px;opacity:0;backdrop-filter:blur(8px)}
.callout .ic{width:120px;height:120px;border-radius:28px;display:flex;align-items:center;justify-content:center;flex:none}
.callout .k{font-weight:700;font-size:30px;letter-spacing:2px;color:#A9BBD0;text-transform:uppercase}
.callout .v{font-weight:800;font-size:84px;line-height:1.05;letter-spacing:-1px;white-space:nowrap}
.callout.small .v{font-size:66px}
.up .v{color:var(--up)}.down .v{color:var(--down)}.warn .v{color:var(--warn)}
.up .ic{background:rgba(61,220,132,.16)}.down .ic{background:rgba(255,92,92,.16)}.warn .ic{background:rgba(255,176,32,.16)}
.chips{position:absolute;left:50px;right:50px;top:1576px;height:64px;display:flex;gap:16px}
.chip{height:60px;border-radius:30px;padding:0 24px;display:flex;align-items:center;font-weight:700;font-size:26px;background:rgba(255,255,255,.07);border:1.5px solid rgba(255,255,255,.12);opacity:0;white-space:nowrap}
.credit{position:absolute;left:0;right:0;bottom:46px;text-align:center;font-size:22px;color:#7F93AA;letter-spacing:1px;font-weight:600}
/* captions */
#cap{position:absolute;left:60px;right:60px;top:1668px;height:170px;display:flex;align-items:center;justify-content:center}
#capbox{max-width:960px;text-align:center;font-weight:800;font-size:46px;line-height:1.28;padding:18px 34px;border-radius:24px;background:rgba(3,10,20,.62);border:1.5px solid rgba(255,255,255,.08);text-shadow:0 2px 6px rgba(0,0,0,.5);opacity:0}
#capbox .n{color:var(--gold2)}
/* intro */
.heroimg{position:absolute;left:-60px;top:-60px;width:1200px;height:2040px;object-fit:cover;will-change:transform}
.shade{position:absolute;inset:0;background:linear-gradient(180deg,rgba(8,20,35,.55) 0%,rgba(8,20,35,.82) 45%,rgba(8,20,35,.97) 75%)}
.kick{position:absolute;left:70px;top:330px;text-shadow:0 2px 10px rgba(0,0,0,.7);font-weight:700;font-size:30px;letter-spacing:6px;color:var(--gold2);text-transform:uppercase}
/* chữ to tiếng Việt: KHÔNG bọc overflow:hidden, line-height đủ cao, nếu không sẽ cắt mất dấu (SẢN thành SÁN) */
.hook{position:absolute;inset:0;transform-origin:70px 640px}
.big{position:absolute;left:66px;font-weight:800;font-size:120px;line-height:1.2;letter-spacing:-2px;white-space:nowrap;text-shadow:0 6px 28px rgba(0,0,0,.6)}
.big.gold{color:var(--gold);font-size:108px}
.sub{position:absolute;left:70px;top:900px;font-family:'Playfair Display',serif;font-style:italic;font-weight:700;font-size:66px;color:#fff;white-space:nowrap;padding-bottom:14px;background:linear-gradient(var(--gold),var(--gold)) no-repeat 0 100%/0% 8px;text-shadow:0 4px 18px rgba(0,0,0,.6)}
.tiles{position:absolute;left:66px;right:66px;top:1080px;display:flex;flex-direction:column;gap:24px}
.tile{height:150px;border-radius:28px;background:rgba(255,255,255,.07);border:2px solid rgba(255,255,255,.12);display:flex;align-items:center;padding:0 40px;gap:34px;opacity:0;backdrop-filter:blur(6px)}
.tile .tv{font-weight:800;font-size:72px;width:330px;white-space:nowrap}
.tile .tk{font-weight:600;font-size:36px;color:#C9D6E4}
/* advice */
.adv-title{position:absolute;left:70px;top:300px;font-family:'Playfair Display',serif;font-weight:700;font-size:92px;line-height:1.05}
.adv-line{position:absolute;left:74px;top:520px;height:8px;border-radius:4px;background:var(--gold);width:0}
.items{position:absolute;left:70px;right:70px;top:640px;display:flex;flex-direction:column;gap:30px}
.item{height:150px;border-radius:30px;background:rgba(255,255,255,.07);border:2px solid rgba(255,255,255,.12);display:flex;align-items:center;gap:36px;padding:0 40px;opacity:0}
.box{width:84px;height:84px;border-radius:22px;border:4px solid var(--gold);flex:none;position:relative}
.box svg{position:absolute;inset:6px}
.item span{font-weight:700;font-size:48px}
.quote{position:absolute;left:70px;right:70px;top:1200px;padding:46px 50px;border-radius:34px;border:3px solid var(--gold);background:linear-gradient(135deg,rgba(245,192,74,.18),rgba(245,192,74,.04));opacity:0}
.quote p{font-family:'Playfair Display',serif;font-style:italic;font-weight:700;font-size:58px;line-height:1.22}
.quote p b{color:var(--gold2);font-style:normal;font-family:'Be Vietnam Pro'}
/* outro */
.o-logo{position:absolute;left:50%;top:520px;width:260px;height:260px;margin-left:-130px;border-radius:60px;background:linear-gradient(135deg,var(--gold2),var(--gold));display:flex;align-items:center;justify-content:center;color:#0A1626;font-weight:800;font-size:96px;letter-spacing:3px;box-shadow:0 30px 80px rgba(245,192,74,.4)}
.o-name{position:absolute;left:0;right:0;top:850px;text-align:center;font-weight:800;font-size:110px;letter-spacing:-2px}
.o-tag{position:absolute;left:80px;right:80px;top:1010px;text-align:center;font-family:'Playfair Display',serif;font-style:italic;font-weight:700;font-size:56px;color:#E8E1CF;line-height:1.25}
.o-btn{position:absolute;left:50%;top:1250px;width:560px;height:120px;margin-left:-280px;border-radius:60px;background:var(--gold);color:#0A1626;font-weight:800;font-size:46px;display:flex;align-items:center;justify-content:center;gap:18px}
.o-ring{position:absolute;left:50%;top:1250px;width:560px;height:120px;margin-left:-280px;border-radius:60px;border:4px solid var(--gold);opacity:0}
</style>
</head>
<body>
<div id="stage">
  <div class="bg"></div><div class="grid" id="grid"></div>
  <div id="scenes"></div>
  <div id="brand"><div class="badge"><div class="logo" id="blogo"></div><div class="bname"><span id="bname"></span><small id="bsub"></small></div></div><div class="date" id="bdate"></div></div>
  <div id="cap"><div id="capbox"></div></div>
  <div id="progress"></div>
</div>
<script src="timeline.js"></script>
<script>
const W=1080,H=1920,S=980/1040,VH=956;
const clamp=(x,a=0,b=1)=>Math.max(a,Math.min(b,x));
const P=(t,a,b)=>clamp((t-a)/(b-a));
const eo=x=>1-Math.pow(1-x,3), eio=x=>x<.5?4*x*x*x:1-Math.pow(-2*x+2,3)/2;
const eback=x=>{const c1=1.7,c3=c1+1;return 1+c3*Math.pow(x-1,3)+c1*Math.pow(x-1,2)};
const lerp=(a,b,x)=>a+(b-a)*x;
const $=(h)=>{const d=document.createElement('div');d.innerHTML=h.trim();return d.firstChild};
const ARROW=`<svg viewBox="0 0 24 24" width="54" height="54"><path d="M4 2 L4 19 L8.6 14.6 L11.6 21.4 L14.4 20.2 L11.4 13.5 L18 13.4 Z" fill="#fff" stroke="#111" stroke-width="1.4" stroke-linejoin="round"/></svg>`;
const ICON={up:`<svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="#3DDC84" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"><path d="M3 17l6-6 4 4 8-8"/><path d="M14 7h7v7"/></svg>`,
 down:`<svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="#FF5C5C" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"><path d="M3 7l6 6 4-4 8 8"/><path d="M14 17h7v-7"/></svg>`,
 warn:`<svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="#FFB020" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"><path d="M12 3l9.5 17h-19z"/><path d="M12 10v4"/><path d="M12 17.5v.01"/></svg>`};
const CHECK=`<svg viewBox="0 0 24 24" fill="none" stroke="#F5C04A" stroke-width="3.4" stroke-linecap="round" stroke-linejoin="round"><path class="ck" d="M5 12.5l4.5 4.5L19 7.5" stroke-dasharray="24" stroke-dashoffset="24"/></svg>`;
const fmtCap=s=>s.replace(/(\d[\d.,–%/a-zăâêôơưđ]*|≈\S+)/gi,m=>/\d/.test(m)?`<span class="n">${m}</span>`:m);

const root=document.getElementById('scenes');
const SC=TL.scenes.map(sc=>{
  let el;
  if(sc.type==='intro'){
    const L=sc.lines||[], gy=380+L.length*165+6;
    el=$(`<div class="scene"><img class="heroimg" src="${sc.hero}" style="height:1350px;top:-30px"><div class="shade" style="background:linear-gradient(180deg,rgba(8,20,35,.25) 0%,rgba(8,20,35,.42) 32%,rgba(8,20,35,.82) 56%,rgba(8,20,35,1) 70%)"></div>
      <div class="hook"><div class="kick">${sc.kick}</div>
      ${L.map((l,i)=>`<div class="big" style="top:${380+i*165}px">${l}</div>`).join('')}
      <div class="big gold" style="top:${gy}px">${sc.gold}</div>
      <div class="sub" style="top:${gy+176}px">${sc.sub}</div></div>
      <div class="tiles" style="top:${gy+350}px">${(sc.tiles||[]).map(([v,k,kind])=>`<div class="tile"><div class="tv" style="color:var(--${kind})">${v}</div><div class="tk">${k}</div></div>`).join('')}</div>
      <div class="credit">${TL.credit}</div></div>`);
  } else if(sc.type==='article'){
    el=$(`<div class="scene"><div class="label">${sc.label}</div>
      <div class="browser"><div class="chrome"><div class="dots"><i style="background:#FF5F57"></i><i style="background:#FEBC2E"></i><i style="background:#28C840"></i></div>
      <div class="url">🔒 <b>${sc.url.split('.')[0]}</b>${sc.url.slice(sc.url.indexOf('.'))}</div></div>
      <div class="vp"><div class="zoomer"><div class="page"><img src="${sc.art}.jpg"></div></div><div class="fade-bottom"></div>
      <div class="wheel"><i></i></div><div class="cursor">${ARROW}</div></div></div>
      <div class="chips"></div>
      <div class="credit">${TL.credit}</div></div>`);
    const page=el.querySelector('.page');
    sc.hls=[];
    sc.beats.forEach((b,k)=>{
      b.hl=b.boxes.map(bx=>{const d=document.createElement('div');d.className='hl';
        d.style.left=(bx[0]*S-4)+'px';d.style.top=(bx[1]*S-2)+'px';d.style.height=((bx[3]-bx[1])*S+4)+'px';page.appendChild(d);return d;});
      const [k1,v,kind]=b.call;
      b.co=$(`<div class="callout ${kind} ${v.length>12?'small':''}"><div class="ic">${ICON[kind]}</div><div><div class="k">${k1}</div><div class="v">${v}</div></div></div>`);
      el.appendChild(b.co);
      b.chip=$(`<div class="chip" style="color:var(--${kind})">${v}</div>`);
      el.querySelector('.chips').appendChild(b.chip);
    });
    // group beats into "views" (clusters that need no scroll between them)
    const views=[];
    sc.beats.forEach(b=>{
      const top=Math.min(...b.boxes.map(x=>x[1]))*S, bot=Math.max(...b.boxes.map(x=>x[3]))*S;
      let y=Math.max(0,(top+bot)/2-VH*0.42); y=Math.min(y,sc.h*S-VH);
      const last=views[views.length-1];
      if(last && Math.abs(y-last.y)<200){ last.beats.push(b); }
      else views.push({y,beats:[b]});
    });
    // finalize each view: y centered on union of its boxes, focus, zoom
    const kf=[[sc.t0,0],[sc.t0+0.2,0]]; let prevY=0;
    views.forEach(v=>{
      const all=v.beats.flatMap(b=>b.boxes);
      const top=Math.min(...all.map(x=>x[1]))*S, bot=Math.max(...all.map(x=>x[3]))*S;
      let y=Math.max(0,(top+bot)/2-VH*0.42); y=Math.min(y,sc.h*S-VH); v.y=y;
      const t=v.beats[0].t, dist=Math.abs(y-prevY), dur=dist>1100?1.2:0.95;
      if(dist>2){kf.push([t-0.12-dur,prevY]);kf.push([t-0.12,y]);}
      v.scrollStart=t-0.12-dur; prevY=y;
      const x0=Math.min(...all.map(x=>x[0]))*S, x1=Math.max(...all.map(x=>x[2]))*S;
      const h=bot-top; let z = h>300?1.18:(h>120?1.28:1.38);
      z = Math.max(1.08, Math.min(z, 950/(x1-x0+10)));
      let fx=(x0+x1)/2; const lo=(x1*z-970)/(z-1), hi=(x0*z-10)/(z-1);
      if(lo<=hi) fx=Math.min(Math.max(fx,lo),hi);
      v.fx=Math.min(Math.max(fx,0),980); v.fy=Math.min(Math.max((top+bot)/2-y,0),VH); v.zmax=z;
      v.beats.forEach(b=>b.y=y);
    });
    views.forEach((v,k)=>{
      const nv=views[k+1];
      const zEnd = nv ? nv.scrollStart : sc.t1;
      v.zin=[v.beats[0].t-0.05,v.beats[0].t+0.6]; v.zout=[zEnd-0.45,zEnd];
    });
    kf.sort((a,b)=>a[0]-b[0]);
    sc.kf=kf; sc.views=views;
  } else if(sc.type==='advice'){
    el=$(`<div class="scene"><img class="heroimg" src="${sc.bg}" style="filter:blur(10px) saturate(.8)"><div class="shade" style="background:rgba(8,20,35,.74)"></div>
      <div class="adv-title">${sc.title}</div><div class="adv-line"></div>
      <div class="items">${sc.items.map(x=>`<div class="item"><div class="box">${CHECK}</div><span>${x}</span></div>`).join('')}</div>
      <div class="quote"><p>${sc.quote}</p></div></div>`);
  } else {
    el=$(`<div class="scene"><img class="heroimg" src="${sc.bg}" style="filter:blur(14px) saturate(.7)"><div class="shade" style="background:rgba(8,20,35,.72)"></div>
      <div class="o-logo">${sc.logo||'NMB'}</div><div class="o-name">${sc.name}</div>
      <div class="o-tag">${sc.tag}</div>
      <div class="o-ring"></div><div class="o-btn">${sc.btn}</div></div>`);
  }
  root.appendChild(el); sc.el=el; return sc;
});
const BR=Object.assign({logo:'NMB',name:'Mậu Bảo',sub:'Bản tin bất động sản'},TL.brand||{});
document.getElementById('blogo').textContent=BR.logo;document.getElementById('bname').textContent=BR.name;document.getElementById('bsub').textContent=BR.sub;document.getElementById('bdate').textContent=TL.date;
const capbox=document.getElementById('capbox'), brand=document.getElementById('brand'), prog=document.getElementById('progress'), grid=document.getElementById('grid');
TL.caps.forEach(c=>c.html=fmtCap(c.text));

function scrollAt(sc,t){const kf=sc.kf;if(t<=kf[0][0])return kf[0][1];
  for(let i=0;i<kf.length-1;i++){const [a,ya]=kf[i],[b,yb]=kf[i+1];if(t<=b){return lerp(ya,yb,eio(P(t,a,b)))}}
  return kf[kf.length-1][1];}

function sceneVis(sc,t){ // returns [opacity, enterProgress, exitProgress]
  const fin=P(t,sc.t0,sc.t0+0.45), fout=P(t,sc.t1-0.35,sc.t1);
  return [sc.type==='intro'?(1-fout):fin*(1-fout), eo(fin), fout]; // mở đầu hiện đủ ngay khung hình 0, không mờ dần
}

function render(t){
  prog.style.width=(W*clamp(t/TL.total))+'px';
  grid.style.transform=`translate(${(t*6)%60}px,${(t*9)%60}px)`;
  let showBrand=0;
  for(const sc of SC){
    const el=sc.el;
    if(t<sc.t0-0.01||t>sc.t1+0.01){el.style.opacity=0;el.style.visibility='hidden';continue}
    el.style.visibility='visible';
    const [op,ein,eout]=sceneVis(sc,t);
    el.style.opacity=op;
    const lt=t-sc.t0;
    if(sc.type==='intro'){
      if(!sc.fit){sc.fit=1; // dòng chữ to quá dài thì tự thu nhỏ cho vừa khung
        el.querySelectorAll('.big,.sub').forEach(b=>{const max=W-140;if(b.scrollWidth>max)b.style.fontSize=(parseFloat(getComputedStyle(b).fontSize)*max/b.scrollWidth).toFixed(1)+'px';});}
      const img=el.querySelector('.heroimg');img.style.transform=`scale(${1.18-0.12*P(t,0,sc.t1)}) translateY(${-30*P(t,0,sc.t1)}px)`;
      // HOOK ngay khung hình đầu: chữ có sẵn từ t=0, chỉ "đập" nhẹ 1.05 → 1 trong 0,4s
      el.querySelector('.hook').style.transform=`scale(${1+0.05*(1-eo(P(t,0,.4)))})`;
      const c1=sc.sub_t, c2=sc.tiles_t;
      el.querySelector('.sub').style.backgroundSize=`${(100*eo(P(t,c1,c1+.7))).toFixed(2)}% 8px`; // gạch chân vàng chạy theo câu hook
      el.querySelectorAll('.tile').forEach((ti,i)=>{const p=P(t,c2+i*.35,c2+i*.35+.55);ti.style.opacity=p;ti.style.transform=`translateX(${(1-eback(p))*-120}px)`;});
      el.style.transform=`scale(${1+0.06*eout})`;
    }
    else if(sc.type==='article'){
      showBrand=Math.max(showBrand,op);
      const br=el.querySelector('.browser');br.style.transform=`translateY(${(1-ein)*120}px) scale(${0.94+0.06*ein})`;
      const lab=el.querySelector('.label');lab.style.opacity=ein;lab.style.transform=`translateX(${(1-ein)*-60}px)`;
      const y=scrollAt(sc,t), y2=scrollAt(sc,t+1/30), v=Math.abs(y2-y)*30;
      const page=el.querySelector('.page');page.style.transform=`translateY(${-y}px)`;
      let z=1,fx=490,fy=478;
      for(const b of sc.views){const pz=eio(P(t,b.zin[0],b.zin[1]))*(1-eio(P(t,b.zout[0],b.zout[1])));if(pz>0.0001){z=1+(b.zmax-1)*pz;fx=b.fx;fy=b.fy;}}
      el.querySelector('.zoomer').style.transform=`translate(${fx}px,${fy}px) scale(${z}) translate(${-fx}px,${-fy}px)`;
      page.style.filter=v>1400?`blur(${Math.min(6,(v-1400)/500)}px)`:'none';
      // cursor & wheel
      const cur=el.querySelector('.cursor'), wh=el.querySelector('.wheel');
      let cx=820,cy=600; const scrolling=v>40;
      // find active beat
      let active=null;
      sc.beats.forEach((b,k)=>{
        const n=b.hl.length;
        b.hl.forEach((d,j)=>{const a=b.t+j*.45;const p=eo(P(t,a,a+.45));const bx=b.boxes[j];d.style.width=((bx[2]-bx[0])*S+8)*p+'px';
          if(t>=a-.25&&t<a+.5){active=[bx,p,j]}});
        const tco=b.t+.25+.45*(n-1); const next=k<sc.beats.length-1?sc.beats[k+1].t:sc.t1+1;
        const pin=P(t,tco,tco+.5), pout=P(t,next-.1,next+.35);
        b.co.style.opacity=pin*(1-pout);
        b.co.style.transform=`scale(${0.7+0.3*eback(pin)}) translateY(${-40*pout}px)`;
        b.chip.style.opacity=P(t,next+.2,next+.6)*(k<sc.beats.length-1?1:0);
      });
      if(active&&!scrolling){const [bx,p]=active;cx=lerp(bx[0],bx[2],p)*S;cy=(bx[3]*S-y)-6;}
      // smooth cursor: ease toward target using time-based blend (deterministic approx)
      const sx=fx+(cx-fx)*z, sy=fy+(cy-fy)*z;
      cur.style.transform=`translate(${active&&!scrolling?sx:cx}px,${active&&!scrolling?sy:cy}px)`;
      cur.style.opacity=P(t,sc.t0+.5,sc.t0+.8);
      wh.style.opacity=scrolling?1:0; wh.style.transform=`translate(${880}px,${VH/2-46}px)`;
      wh.querySelector('i').style.transform=`translateY(${(t*60)%26}px)`;
    }
    else if(sc.type==='advice'){
      const img=el.querySelector('.heroimg');img.style.transform=`scale(${1.1+0.05*P(t,sc.t0,sc.t1)})`;
      const ti=el.querySelector('.adv-title');ti.style.transform=`translateY(${(1-ein)*60}px)`;ti.style.opacity=ein;
      el.querySelector('.adv-line').style.width=(260*eo(P(t,sc.t0+.3,sc.t0+1)))+'px';
      el.querySelectorAll('.item').forEach((it,i)=>{const a=sc.items_t[i];const p=P(t,a-.2,a+.3);it.style.opacity=.15+.85*p;it.style.transform=`translateX(${(1-eo(p))*80}px)`;
        it.querySelector('.ck').style.strokeDashoffset=24*(1-eo(P(t,a,a+.45)));
        it.style.borderColor=p>.99?'rgba(245,192,74,.55)':'rgba(255,255,255,.12)';});
      const q=el.querySelector('.quote');const pq=P(t,sc.quote_t,sc.quote_t+.6);q.style.opacity=pq;q.style.transform=`scale(${0.85+0.15*eback(pq)})`;
    }
    else {
      const img=el.querySelector('.heroimg');img.style.transform=`scale(${1.1+0.06*P(t,sc.t0,sc.t1)})`;
      const lg=el.querySelector('.o-logo');const pl=P(t,sc.t0+.1,sc.t0+.8);lg.style.transform=`scale(${0.4+0.6*eback(pl)}) rotate(${(1-eo(pl))*-12}deg)`;lg.style.opacity=pl;
      const nm=el.querySelector('.o-name');const pn=P(t,sc.t0+.4,sc.t0+1);nm.style.opacity=pn;nm.style.transform=`translateY(${(1-eo(pn))*50}px)`;
      const tg=el.querySelector('.o-tag');const pt=P(t,sc.t0+.8,sc.t0+1.4);tg.style.opacity=pt;
      const bt=el.querySelector('.o-btn');const pb=P(t,sc.t0+1.2,sc.t0+1.7);bt.style.opacity=pb;bt.style.transform=`scale(${0.7+0.3*eback(pb)})`;
      const rg=el.querySelector('.o-ring');const ph=((t-sc.t0-1.7)%1.2)/1.2;rg.style.opacity=t>sc.t0+1.7?(1-ph)*.8:0;rg.style.transform=`scale(${1+0.25*ph},${1+0.6*ph})`;
    }
  }
  brand.style.opacity=showBrand;
  // captions
  const c=[...TL.caps].reverse().find(c=>t>=c.t0&&t<c.t1+0.25);
  if(c){ if(capbox.dataset.k!==String(c.t0)){capbox.innerHTML=c.html;capbox.dataset.k=String(c.t0);}
    const p=c.t0<=0.01?1:P(t,c.t0,c.t0+.18);capbox.style.opacity=p;capbox.style.transform=`translateY(${(1-eo(p))*16}px)`;}
  else capbox.style.opacity=0;
  return true;
}
window.render=render;
</script>
</body>
</html>
```

### config.json
Mẫu – video "Bản tin BĐS tháng 10/2026" (thời gian theo file giọng 52,18 giây).
```json
{
 "date": "15.10.2026",
 "credit": "Nguồn: VnEconomy – Tạp chí Kinh tế Việt Nam",
 "brand": {"logo": "NMB", "name": "Mậu Bảo", "sub": "Bản tin bất động sản"},
 "voice_offset": 0.0,
 "tail": 1.8,
 "voice_duration": 52.18,
 "articles": {
  "a1": {"captures": ["a1_0", "a1_1", "a1_2"]},
  "a2": {"captures": ["a2_0", "a2_1", "a2_2", "a2_3"]},
  "a3": {"captures": ["a3_0", "a3_1", "a3_2"]},
  "a4": {"captures": ["a4_0", "a4_1", "a4_2"], "crop": {"a4_1": 840, "a4_2": 840}}
 },
 "paragraphs": [
  {"segments": [
    {"t": [0.0, 2.07], "cap": "Thị trường BĐS tháng 10:"},
    {"t": [2.34, 3.37], "cap": "hàng ngày càng nhiều, nhưng người mua lại ít đi"},
    {"t": [3.73, 6.46], "cap": "Những điểm chính anh chị cần biết"}
   ],
   "scene": {"type": "intro", "hero": "hero1.jpg", "kick": "Bản tin thị trường • NMB", "lines": ["THỊ TRƯỜNG", "BẤT ĐỘNG SẢN"], "gold": "THÁNG 10/2026", "sub": "Hàng nhiều – người mua ít", "tiles": [["+21%", "Nguồn cung mới", "up"], ["−16%", "Lượng bán ra", "down"], ["≈52.000", "Căn tồn kho", "warn"]]}},
  {"segments": [
    {"t": [7.36, 9.85], "cap": "9 tháng đầu năm, nguồn cung mới tăng 21%"},
    {"t": [10.14, 11.85], "cap": "nhưng lượng bán ra lại giảm 16%"},
    {"t": [12.33, 15.79], "cap": "Giá căn hộ miền Bắc quý 3 giảm 15–20% so với quý trước"}
   ],
   "scene": {"type": "article", "art": "a1", "label": "① CUNG TĂNG – CẦU GIẢM", "url": "vneconomy.vn/suc-hap-thu-giam-thi-truong-nha-o...", "beats": [{"t": 8.95, "groups": [0, 1], "call": ["NGUỒN CUNG MỚI", "+21%", "up"]}, {"t": 10.14, "groups": [2], "call": ["LƯỢNG BÁN RA", "−16%", "down"]}, {"t": 12.33, "groups": [3], "call": ["GIÁ CĂN HỘ MIỀN BẮC", "−15–20%", "down"]}]}},
  {"segments": [
    {"t": [16.67, 19.43], "cap": "Quý 3 chỉ có khoảng 92.000 giao dịch"},
    {"t": [19.73, 21.69], "cap": "trong khi tồn kho tăng lên gần 52.000 căn"},
    {"t": [22.07, 25.67], "cap": "Nguyên nhân chính: lãi vay mua nhà phổ biến 12–14%/năm"}
   ],
   "scene": {"type": "article", "art": "a2", "label": "② GIAO DỊCH GIẢM – TỒN KHO TĂNG", "url": "vneconomy.vn/giao-dich-bat-dong-san-giam-ton-kho...", "beats": [{"t": 17.8, "groups": [0, 1], "call": ["GIAO DỊCH QUÝ 3", "≈92.000", "down"]}, {"t": 19.73, "groups": [2], "call": ["TỒN KHO", "≈52.000 căn", "up"]}, {"t": 22.85, "groups": [3, 4], "call": ["LÃI VAY MUA NHÀ", "12–14%/năm", "warn"]}]}},
  {"segments": [
    {"t": [26.54, 29.18], "cap": "Ngân hàng Nhà nước tiếp tục kiểm soát chặt tín dụng BĐS"},
    {"t": [29.6, 31.96], "cap": "Chuyên gia đề xuất ưu tiên vốn cho người mua nhà lần đầu"}
   ],
   "scene": {"type": "article", "art": "a3", "label": "③ TÍN DỤNG BĐS BỊ SIẾT", "url": "vneconomy.vn/kiem-soat-tin-dung-bat-dong-san...", "beats": [{"t": 26.7, "groups": [0, 1, 2], "call": ["TÍN DỤNG BĐS", "Kiểm soát chặt", "warn"]}, {"t": 30.2, "groups": [3], "call": ["ĐƯỢC ƯU TIÊN VỐN", "Người mua nhà lần đầu", "up"]}]}},
  {"segments": [
    {"t": [32.84, 33.83], "cap": "Điểm sáng là Bắc Ninh:"},
    {"t": [34.03, 35.93], "cap": "hơn 41.000 người nước ngoài đang sinh sống"},
    {"t": [36.2, 38.22], "cap": "nhưng thị trường lại thiếu căn hộ cao cấp cho họ thuê"}
   ],
   "scene": {"type": "article", "art": "a4", "label": "④ ĐIỂM SÁNG BẮC NINH", "url": "vneconomy.vn/nhu-cau-nha-o-cho-nguoi-nuoc-ngoai...", "beats": [{"t": 34.03, "groups": [0], "call": ["NGƯỜI NƯỚC NGOÀI", "41.416 người", "up"]}, {"t": 36.2, "groups": [1, 2], "call": ["ĐANG THIẾU", "Căn hộ cao cấp", "warn"]}]}},
  {"segments": [
    {"t": [39.12, 40.69], "cap": "Lời khuyên của tôi: giai đoạn này"},
    {"t": [40.94, 42.33], "cap": "hãy chọn dự án pháp lý rõ ràng,"},
    {"t": [42.56, 43.48], "cap": "có chính sách tài chính tốt,"},
    {"t": [43.73, 44.96], "cap": "và tính kỹ khả năng trả nợ"},
    {"t": [45.38, 47.69], "cap": "Thị trường chậm lại – chính là lúc người mua có quyền mặc cả"}
   ],
   "scene": {"type": "advice", "bg": "hero3.jpg", "title": "Lời khuyên<br>của tôi", "items": ["Pháp lý rõ ràng", "Chính sách tài chính tốt", "Tính kỹ khả năng trả nợ"], "items_t": [40.94, 42.56, 43.73], "quote": "Thị trường chậm lại – chính là lúc <b>người mua có quyền mặc cả.</b>", "quote_t": 45.38}},
  {"segments": [
    {"t": [48.57, 49.13], "cap": "Tôi là Mậu Bảo"},
    {"t": [49.46, 51.8], "cap": "Theo dõi NMB để không mua sai bất động sản"}
   ],
   "scene": {"type": "outro", "bg": "hero2.jpg", "logo": "NMB", "name": "Mậu Bảo", "tag": "Theo dõi để không mua sai<br>bất động sản", "btn": "＋ Theo dõi NMB"}}
 ]
}
```

---
← [[MOC-NMB-Hub]] · nguồn: NMB Hub `chung/ky-nang/202610200909-skill-nmb-nmb-video-ban-tin-skill-md-video-doc-9-16-diem-tin.md`
