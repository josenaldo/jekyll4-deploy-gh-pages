FROM jekyll/jekyll:latest

# install a modern bundler version
RUN gem install bundler

RUN chmod 775 /github/workspace/vendor/bundle/ruby/2.7.0
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
