# Btime Test Front-End

This project was developed based on test instructions.
It was used GraphQL api to share data with front-end
Front-End can use one schema to make get_all, search and filter is the `getPaginated` schema

![alt text](image.png)

To able the search mode on just user the params about search `isSearch: true` and `substring: <String>`

![alt text](image-1.png)

To able the filter mode on just user the params about filter `isFilter: true` and `filter: <String>`

![alt text](image-2.png)

To make pagination in all cases just add params of pagination

![alt text](image-3.png)

## Available Scripts

### `mix setup`
  Run to install and setup dependencies locally

### `mix phx.server`
  Start Phoenix endpoint or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000/api/graphiql`](http://localhost:4000/api/graphiql) from your browser to access graphql playground.

Or [`localhost:4000/api/graphql`](http://localhost:4000/api/graphql) from your browser to access graphql api.

### `mix test`
Launches the test runner in the interactive watch mode.
> Note: You must have postgres started locally, because `mix test` create and generate an database

## Run by Docker

If can you start project by Docker run this commands.
In the project directory, you can run:

#### `docker build -t btime_test_back .`
#### `docker run --rm --network=host -it -p 4000:4000 -e DATABASE_URL=postgres://postgres:postgres@localhost:5432/btime_test_back_dev -e SECRET_KEY_BASE=MelcfSlPwq4doMv2OKRBR9xVNW519TiQaihy8OKhz0e++7+pnWbXME2NrHJZe+4f btime_test_back` 

**Format URL_DATABASE(postgres://{user}:{password}@{hostname}:{port}/{database-name})**

> ### Note: To Database when you run project by Docker
> You need create and migrate database before runing docker, lets do it:
> > Run `mix setup` to install and setup dependencies locally. 
  After create and migrate database locally you can start projet by Docker

## Access by hosting

To acelerate processes form testing api project you can access by hosting 

>To access Playground
[`https://beautiful-little-unau.gigalixirapp.com/api/graphql`](https://beautiful-little-unau.gigalixirapp.com/api/graphiql)
>
>To access API
[`https://beautiful-little-unau.gigalixirapp.com/api/graphql`](https://beautiful-little-unau.gigalixirapp.com/api/graphql)
