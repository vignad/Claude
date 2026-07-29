# Aurora Consulting — CFML site

A small multi-page ColdFusion (CFML) site: home, about, services, and a
contact form with server-side validation and email sending.

## Structure

- `Application.cfc` — app/session config, an application-scope visit
  counter guarded with `cflock`, and a top-level error handler.
- `includes/header.cfm`, `includes/footer.cfm` — shared layout, pulled in
  with `cfinclude` from each page.
- `index.cfm`, `about.cfm`, `services.cfm`, `contact.cfm` — the pages.
- Styling reuses the Bootstrap build already vendored at
  `../assets/vendor/bootstrap` in the repo root (no CDN required).

## Running it

This needs a CFML engine (Lucee or Adobe ColdFusion) — plain HTML/HTTP
serving won't execute `.cfm`/`.cfc` files. The easiest way locally is
[CommandBox](https://www.ortussolutions.com/products/commandbox), which
bundles Lucee:

```bash
cd coldfusion-site
box server start
```

This starts a local Lucee server serving the current directory and opens
it in your browser (defaults to `http://127.0.0.1:<port>`).

If you're using Adobe ColdFusion instead, point a site root at this
folder and browse to `index.cfm`.

`contact.cfm` calls `cfmail` to send the submitted message — that
requires a mail server configured in the CF/Lucee administrator
(`smtp` settings). Without one configured, submissions will show the
"couldn't send your message" error instead of failing silently.
