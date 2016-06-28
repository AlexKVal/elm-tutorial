module Models exposing (..)

import Players.Models exposing (Player)


type alias Model =
    { players : List Player
    }


initialModel : Model
initialModel =
    {- it is hardcoded for now -}
    { players =
        [ Player 1 "Sam" 1
        , Player 2 "Joanna" 1
        , Player 3 "John Doe with a long name" 2
        ]
    }
