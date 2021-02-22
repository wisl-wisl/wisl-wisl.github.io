FROM ruby:2.7-alpine
RUN apk add --no-cache build-base gcc bash cmake git
RUN gem install bundler -v "~>1.0" 
RUN gem install bundler jekyll
EXPOSE 4000
WORKDIR /site
CMD cd /site && \
    bundle install && \
    bundle exec jekyll serve \
        --livereload \
        --host 0.0.0.0 \
        --port 4000