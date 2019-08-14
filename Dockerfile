FROM elixir:1.9.1
RUN mkdir /code
WORKDIR /code
ADD . /code

RUN mix local.hex --force
RUN mix local.rebar --force
