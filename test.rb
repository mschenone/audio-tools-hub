require 'html-proofer'

options = {
  assume_extension: true,
  check_html: true,
  check_img_http: true,
  check_opengraph: true,
  check_sri: false,
  disable_external: true, # We don't want to ping external sites in CI to prevent flaky tests
  enforce_https: true,
  ignore_urls: [%r{^/api/}], # API endpoints might not resolve as static HTML
  # jekyll-polyglot generates href="/audio-tools-hub/" which resolves locally to /audio-tools-hub/index.html
  # But HTMLProofer looks in _site/audio-tools-hub/index.html which doesn't exist (it's at _site/index.html)
  swap_urls: { %r{^/audio-tools-hub/} => "/" }
}

HTMLProofer.check_directory("./_site", options).run
