FROM ruby:3.3-alpine
# linux-headers provides <linux/limits.h>, needed to build the ffi gem's
# native extension on Alpine/musl (ffi >= 1.17 requires it).
RUN apk add --no-cache build-base gcc bash cmake git linux-headers
# Pin Bundler to the version in Gemfile.lock (BUNDLED WITH) so it doesn't
# re-install a matching version on every boot. Bump both together.
RUN gem install bundler -v 4.0.12
RUN gem install jekyll
EXPOSE 4000
WORKDIR /site
CMD cd /site && \
    bundle install && \
    bundle exec jekyll serve \
        --livereload \
        --host 0.0.0.0 \
        --port 4000