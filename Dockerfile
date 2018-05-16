# Stage 0, to build and compile Jekyll
FROM ruby:2.5 as jekyll
LABEL maintainer="brian@linuxpenguins.xyz"
WORKDIR /app
RUN apt-get update \
  && apt-get install -y \
    python-pip \
  && rm -rf /var/lib/apt/lists/*
RUN pip install docutils pygments
COPY ./Gemfile /app/
RUN bundle install
COPY ./ /app/
RUN jekyll build --destination _tmp/brian

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.13
COPY --from=jekyll /app/_tmp/ /usr/share/nginx/html
RUN chmod go+rX -R /usr/share/nginx/html
