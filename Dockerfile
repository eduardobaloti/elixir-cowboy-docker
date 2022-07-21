FROM elixir

WORKDIR /app

COPY . .

RUN mix local.hex --force

RUN mix deps.get

EXPOSE 3000

CMD ["mix", "run", "--no-halt"]