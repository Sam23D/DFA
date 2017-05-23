module GuiView exposing (..)

import Html exposing(..)
import Html.Attributes exposing(..)

mainContainer model =
  div
  [ class "ui grid" ]
  [ div [ class "sixteen wide column"][ h1[][ text "Automaton Simulator"] ] 
  ,div[ class "four wide column" ]
    [ sideBar model ]
  , div[ class "twelve wide column"] 
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
  , labeledInput "Current Word"
  , inputButton "S1" "Add State"
  ]

{- INPUTS -}
simpleInput placeholderText =
  div
    [ class "ui input" ]
    [ input [ type_ "text",  placeholder placeholderText ][ ]
    ]

labeledInput labelText = 
  div
  [ class "ui form" ]
  [ div
        [ class "field" ]
        [ label [][ text labelText] 
        , input [ type_ "text",  placeholder labelText ][ ]
        ]
  ]
inputButton placeholderText buttonText =
  div
    [ class "ui action input" ]
    [ input [ placeholder placeholderText ][]
    , button [ class "ui button"][ text buttonText]
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
