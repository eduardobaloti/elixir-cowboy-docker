# SimpleCowboy

Simple elixir cowboy app using Docker

## Build app 

```
git clone https://github.com/eduardobaloti/elixir-cowboy-docker.git
docker build -t elixir_simple_cowboy .
```

## Execute the app 
```
docker run --name elixir_simple_cowboy -d -p 3000:3000 kinker/elixir_simple_cowboy
```

```
Now visit http://localhost:3000
Hello Cowboy🤠
```
