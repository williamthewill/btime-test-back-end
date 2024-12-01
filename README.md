# Btime Test Front-End

This project was developed based on test instructions.

## Available Scripts

  * Run `mix setup` to install and setup dependencies locally
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000/api/graphiql`](http://localhost:4000/api/graphiql) from your browser to access graphql playground.

Or [`localhost:4000/api/graphql`](http://localhost:4000/api/graphql) from your browser to access graphql api.

## Run by Docker

If can you start project by Docker run this commands.
In the project directory, you can run:

#### `docker build -t btime_test_back .`
#### `docker run --rm --network=host -it -p 4000:4000 -e DATABASE_URL=postgres://postgres:postgres@localhost:5432/btime_test_back_dev -e SECRET_KEY_BASE=MelcfSlPwq4doMv2OKRBR9xVNW519TiQaihy8OKhz0e++7+pnWbXME2NrHJZe+4f btime_test_back` 

**Format URL_DATABASE(postgres://{user}:{password}@{hostname}:{port}/{database-name})**

### Note By Database when you run project by Docker
You need create and migrate database before runing docker, lets do it:

  * Run `mix setup` to install and setup dependencies locally. 
  After create and migrate database locally you can start projet by Docker

