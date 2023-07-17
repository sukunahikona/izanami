FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y postgresql-client

ARG RAILS_ENV="production"
ENV RAILS_ENV=${RAILS_ENV}

# user settings
ARG UID=1000
ARG USERNAME=admin
ARG GID=1000
ARG GROUPSNAME=admin
RUN groupadd -g $GID $GROUPSNAME
RUN useradd -m -u $UID -g $GROUPSNAME $USERNAME
RUN mkdir -p /izanami
RUN chown -R $USERNAME /usr/local/bundle

# dir init
WORKDIR /izanami
COPY ./app/* /izanami/
RUN chown -R $USERNAME:$GROUPSNAME /izanami
COPY ./resource/entrypoint.sh /usr/bin/
RUN chmod a+x /usr/bin/entrypoint.sh

# rails settings
USER $USERNAME
RUN bundle install
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD rails s -b 0.0.0.0 -e ${RAILS_ENV}
