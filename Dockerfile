FROM jekyll/jekyll:latest

# install a modern bundler version
RUN gem install bundler

RUN mkdir -p /github/workspace/vendor/bundle/ruby/2.7.0
RUN chmod 777 /github/workspace/vendor/bundle/ruby/2.7.0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
