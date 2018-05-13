# Stage 0, to build and compile Jekyll
FROM ruby:2.5 as jekyll
WORKDIR /app
COPY ./Gemfile /app/
RUN bundle install
COPY ./ /app/
RUN jekyll build --destination _tmp

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.13
COPY --from=jekyll /app/_tmp/ /usr/share/nginx/html
