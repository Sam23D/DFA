import Html exposing(..)
import Html.Attributes exposing(..)

import DFA exposing(..)
import GuiView exposing(..)

main =
  beginnerProgram
    {  model = model
    ,  view = view
    ,  update = update
    }


type Msg = NoMsg

model =
  {  title = "DFA - Deterministic Finite Automata"
  }

view model =
  div[ class ""]
    [  mainContainer model
    ]
