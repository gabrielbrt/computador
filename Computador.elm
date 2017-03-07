module main exposing (..)

import Html exposing (div, button, text)

--modelo

modelo =
     0


-- Vista

main = div[]
  [ button [] [text "-"]
  , text (toString modelo)
  , button [] [text "+"]
  ]
