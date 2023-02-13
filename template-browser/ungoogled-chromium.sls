/etc/apt/sources.list.d/ungoogled-chromium.list:
  file.managed:
    - source: salt://template-browser/ungoogled-chromium.list

/etc/apt/trusted.gpg.d/ungoogled-chromium.gpg:
  file.managed:
    - source: salt://template-browser/ungoogled-chromium.gpg

refresh-ungoogled-chromium:
  pkg.uptodate:
    - refresh: True

ungoogled-chromium:
  pkg.installed

