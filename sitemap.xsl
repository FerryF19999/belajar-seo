<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html lang="id">
<head>
  <meta charset="UTF-8"/>
  <title>Sitemap · belajar-seo.vercel.app</title>
  <meta name="robots" content="noindex"/>
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous"/>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600&amp;family=Instrument+Serif:ital@1&amp;family=JetBrains+Mono:wght@400;500&amp;family=Inter:wght@400;500&amp;display=swap" rel="stylesheet"/>
  <style>
    :root { --bg:#f5f1ea; --bg-2:#ebe4d7; --ink:#1a1613; --ink-2:#4a4238; --muted:#857a6b; --line:#d9d0bf; --paper:#faf7f1; --accent:#c1432c; --accent-soft:#e86a52; --ok:#3d6b4a; }
    * { box-sizing:border-box; margin:0; padding:0; }
    body { font-family:'Inter',system-ui,sans-serif; background:var(--bg); color:var(--ink); padding:48px 32px; line-height:1.55; }
    .wrap { max-width:1040px; margin:0 auto; }
    .eyebrow { font-family:'JetBrains Mono',monospace; font-size:11px; letter-spacing:0.18em; color:var(--muted); text-transform:uppercase; margin-bottom:16px; display:flex; align-items:center; gap:12px; }
    .eyebrow::before { content:""; width:24px; height:1px; background:var(--muted); }
    h1 { font-family:'Fraunces',serif; font-size:48px; font-weight:500; line-height:1.05; letter-spacing:-0.02em; margin-bottom:14px; }
    h1 em { font-family:'Instrument Serif',serif; font-style:italic; color:var(--accent); font-weight:400; }
    .lede { font-size:16px; color:var(--ink-2); max-width:620px; margin-bottom:36px; }
    .stats { display:flex; gap:32px; padding:20px 28px; background:var(--paper); border:1px solid var(--line); margin-bottom:36px; }
    .stat strong { display:block; font-family:'Fraunces',serif; font-size:28px; font-weight:600; line-height:1; color:var(--ink); }
    .stat small { display:block; font-family:'JetBrains Mono',monospace; font-size:10px; letter-spacing:0.12em; color:var(--muted); margin-top:6px; text-transform:uppercase; }
    table { width:100%; border-collapse:collapse; background:var(--paper); border:1px solid var(--line); }
    thead th { text-align:left; font-family:'JetBrains Mono',monospace; font-size:11px; letter-spacing:0.12em; color:var(--muted); text-transform:uppercase; padding:14px 18px; border-bottom:2px solid var(--ink); background:var(--bg-2); }
    tbody td { padding:18px; border-bottom:1px solid var(--line); font-size:14px; vertical-align:top; }
    tbody tr:last-child td { border-bottom:none; }
    tbody tr:hover { background:var(--bg); }
    td.url a { color:var(--ink); text-decoration:none; border-bottom:1px dashed var(--muted); font-family:'JetBrains Mono',monospace; font-size:13px; }
    td.url a:hover { color:var(--accent); border-color:var(--accent); }
    td.date, td.freq, td.priority { font-family:'JetBrains Mono',monospace; font-size:12px; color:var(--ink-2); white-space:nowrap; }
    td.priority strong { color:var(--accent); font-size:14px; }
    .pill { display:inline-block; padding:3px 9px; font-family:'JetBrains Mono',monospace; font-size:10px; letter-spacing:0.05em; background:var(--bg); border:1px solid var(--line); color:var(--ink-2); border-radius:2px; text-transform:uppercase; }
    .footer { margin-top:40px; padding-top:24px; border-top:1px solid var(--line); font-family:'JetBrains Mono',monospace; font-size:11px; color:var(--muted); letter-spacing:0.05em; display:flex; justify-content:space-between; flex-wrap:wrap; gap:12px; }
    .footer a { color:var(--ink-2); text-decoration:none; border-bottom:1px dashed var(--muted); }
    .footer a:hover { color:var(--accent); }
  </style>
</head>
<body>
  <div class="wrap">
    <div class="eyebrow">§ XML SITEMAP</div>
    <h1>Peta lengkap <em>belajar-seo</em></h1>
    <p class="lede">Daftar URL yang disubmit ke search engine (Google, Bing, Yandex) serta AI answer engines (ChatGPT, Perplexity, Gemini). File ini parseable secara otomatis tapi dihias supaya enak dibaca manusia.</p>

    <div class="stats">
      <div class="stat"><strong><xsl:value-of select="count(sm:urlset/sm:url)"/></strong><small>Total URL</small></div>
      <div class="stat"><strong>XML 0.9</strong><small>Schema version</small></div>
      <div class="stat"><strong>UTF-8</strong><small>Encoding</small></div>
    </div>

    <table>
      <thead>
        <tr>
          <th style="width:50%;">URL</th>
          <th style="width:18%;">Last modified</th>
          <th style="width:17%;">Change freq</th>
          <th style="width:15%;">Priority</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="sm:urlset/sm:url">
          <tr>
            <td class="url"><a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a></td>
            <td class="date"><xsl:value-of select="sm:lastmod"/></td>
            <td class="freq"><span class="pill"><xsl:value-of select="sm:changefreq"/></span></td>
            <td class="priority"><strong><xsl:value-of select="sm:priority"/></strong></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>

    <div class="footer">
      <span>GENERATED FOR HUMANS AND CRAWLERS · <a href="/">← BACK TO SITE</a></span>
      <span>© 2026 SEO SEKOLAH</span>
    </div>
  </div>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
