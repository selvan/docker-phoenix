FROM selvan/elixir:1.1.1

MAINTAINER selvan <p.thamarai@gmail.com>

# Postgresql repository
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update

RUN apt-get install -y postgresql-client && \
  	rm -rf /var/lib/apt/lists/* && \
  	rm -rf /var/cache/apt/*

# Install phoenix
RUN mix archive.install --force https://github.com/phoenixframework/phoenix/releases/download/v1.0.2/phoenix_new-1.0.2.ez

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install -y nodejs
