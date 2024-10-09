# ThePlazaElixirChallenge

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `the_plaza_elixir_challenge` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:the_plaza_elixir_challenge, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/the_plaza_elixir_challenge>.

## TODO List

- [x] Start simple mix project `mix new the_plaza_elixir_challenge`

  - [x] Por cada video lanzar un proceso (supervisor)
  - [/] En cada proceso, sacar imagenes de los videos usando **ffmpeg** (system y ports)
  - [ ] Almacenar las imagenes en local (filesystem)
  - [ ] Recuperar los path de las imagenes y guardarlas en memoria ()ets o genservers)

- [ ] Phoenix app - no DB
- [ ] GET -> lista de videos

  - [ ] HTML form
  - [ ] Curl
  - [ ] GET -> Listar y/o renderizar las imagenesde ese (ets o genserver)

- [ ] Hacer la app multinodo
  - [ ] un nodo renderiza videos
  - [ ] otro acceda a lo lista de imagenes
- [ ] distributed erlang -> se genera la imagen en un nodo y debe aparecer en los otros nodos
- [ ] Bonus
  - [ ] Que no se haga bottleneck por que todos los nodos esten leyendo el mismo proceso
  - [ ] El genserver tiene la lista de imagenes (ets, dets, supervisors)
  - [ ] si un nuevo nodo entra, al nodo le hagan sync para tener la lista internamente
- [ ] Hint
  - [ ] FFMPEG command [[#EDIT este es el comando para correr en ffmpeg]]
