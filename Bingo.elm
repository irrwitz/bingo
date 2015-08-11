module Bingo where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String exposing (toUpper, repeat, trimRight)


title: String -> Int -> Html
title message times =
    message ++ " "
    |> toUpper
    |> repeat 3
    |> trimRight
    |> text


pageHeader: Html
pageHeader =
  h1 [ ] [ title "bingo!" 3 ]


pageFooter =
  footer [ ]
    [ a [ href "http://finebrain.com" ]
        [ text "finebrain.com" ]
    ]


view =
  div [ id "container" ] [pageHeader, pageFooter ]

main =
  view


