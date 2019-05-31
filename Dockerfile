FROM alpine:latest

RUN apk add ruby-bundler ansible
RUN adduser -S ci_user

USER ci_user
WORKDIR /home/ci_user

RUN bundle config path vendor/bundle

CMD sh