# taih-ca.github.io

Website for the **Transdisciplinary Artificial Intelligence Hub (TAIH)** at the
University of Calgary — *Bringing AI Researchers Together*.

Built with [Jekyll](https://jekyllrb.com/) and hosted on GitHub Pages at
**https://taih-ca.github.io**. The design follows the
[DENOS Lab](https://denoslab.com) academic-site style, themed with the TAIH
brand palette (crimson `#bb1620`, orange `#ee7706`, tan `#f1caa4`, black).

## Editing content

Most content is data-driven — edit the YAML files in `_data/`, no HTML needed:

| File | Controls |
|------|----------|
| `_data/research.yml` | Flagship research themes |
| `_data/events.yml`   | Recurring events / activities |
| `_data/team.yml`     | Directors |
| `_data/sponsors.yml` | Sponsors & partners |
| `_data/news.yml`     | Announcement banner (newest first) |
| `_config.yml`        | Site title, nav, contact info, external links |

Page sections live in `index.html`; shared chrome in `_layouts/default.html`
and `_includes/`. Styles are in `assets/css/style.css`. Brand logos are in
`assets/img/` (originals kept in `logos/`).

## Running locally

```bash
bundle install
./bin/serve
```

Then open <http://localhost:4000>. Pages live-reload as you edit.

`bin/serve` wraps `bundle exec jekyll serve` and preloads `bin/ruby4_compat.rb`,
a tiny shim needed on Ruby 3.2+ because the `github-pages` gem pins an old
Liquid that still calls the removed `String#tainted?`. The shim is local-only
and has no effect on the GitHub Pages build.

## Deploying

Push to the `main` branch — GitHub Pages builds and deploys automatically.
