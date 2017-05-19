module GuiView exposing (..)

import Html exposing(..)
import Html.Attributes exposing(..)

mainContainer model =
  div
  [ class "ui grid" ]
  [ div[ class "three wide column" ]
    [ sideBar model ]
  , div[ class "nine wide column"] 
    [ rightContainer model ]
  ]
  
{- RIGHT CONTAINER -}
rightContainer model =
    div
    []
    [ h2[][ text model.title ]
    
    ]

{- SIDE BAR -}
sideBar model =
    div
    [ ]
    [ tabs [ "Atutomata" ,"Configuration"]
    , dfaView
    ]

dfaView = 
  div
  [ ]
  [ h4[][ text "Deterministic Finite Automaton"]
  , input [ placeholder "Current Word" ] [ ]
  ]
  
{- TABS -}

tabs labels =
  div
  [ class "ui buttons" ]
  (List.map tab labels)

tab labelText =
  button[ class "ui button" ][ text labelText ]

{- INPUTS -}

textInput =
  input
  []
  []
