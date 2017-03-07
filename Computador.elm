module main exposing (..)

import Html exposing (div, button, text)


main =
    Html.begginerProgram { model = modelo, view = vista, update = atualizar }

--modelo

modelo =
     0


-- Vista

vista modelo =
    div []
  [ button [] [text "-"]
  , text (toString modelo)
  , button [] [text "+"]
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
          modelo -1
