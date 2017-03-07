module main exposing (..)

import Html exposing (div, button, text)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = modelo, view = vista, update = atualizar }

--modelo

modelo =
     0


-- Vista

vista modelo =
    div []
  [ button [ onClick Decrementar ] [text "-"]
  , text (toString modelo)
  , button [ onClick Incrementar ] [text "+"]
  ]

-- Atualização

type Mensagem
    = Incrementar
    | Decrementar

atualizar mensagem modelo =
    case mensagem of

        Incrementar ->
          modelo +1

        Decrementar ->
          modelo - 1
