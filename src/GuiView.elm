module GuiView exposing (..)

import Html exposing(..)
import Html.Attributes exposing(..)
import Css exposing(..)

mainContainer model =
  div
  [  ]
  [ div[ ]
    [ sideBar model ]
  , div[ ]
    []
  ]

sideBar model =
    div
    [ ]
    [ tabs [ "main" ,"configuracion"]
    , textInput
    ]



{- TABS -}

tabs labels =
  div
  [ class "topcoat-button-bar" ]
  (List.map tab labels)

tab label =
  div
  [ class "topcoat-button-bar__item" ]
  [ button
    [ class "topcoat-button-bar__button--large" ]
    [ text label]
  ]

{- INPUTS -}

textInput =
  input
  [ class "topcoat-text-input", type_ "text" ]
  []
