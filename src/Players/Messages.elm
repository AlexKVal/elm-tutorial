module Players.Messages exposing (..)

import Http
import Players.Models exposing (PlayerId, Player)


type Msg
    = FetchAllDone (List Player)
    | FetchAllFail Http.Error
    | ShowPlayers
    | ShowPlayer PlayerId
      --| the second parameter: -1 - decrease or 1 - increase
    | ChangeLevel PlayerId Int
    | SaveSuccess Player
    | SaveFail Http.Error
