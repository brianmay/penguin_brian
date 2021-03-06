# Stage 0, to build and compile Jekyll
FROM ruby:2.5 as jekyll
LABEL maintainer="Brian May <brian@linuxpenguins.xyz>"
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock /app/
RUN gem install bundler && bundle install
COPY ./ /app/
ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN date

# version info
ARG VCS_REF
ARG BUILD_DATE
ENV VCS_REF=$VCS_REF
ENV BUILD_DATE=$BUILD_DATE

RUN bundle exec jekyll build --destination _tmp/brian

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.13
COPY --from=jekyll /app/_tmp/ /usr/share/nginx/html
RUN chmod go+rX -R /usr/share/nginx/html
