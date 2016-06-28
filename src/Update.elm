module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Players.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        PlayersMsg msg ->
            let
                ( updatedPlayers, cmd ) =
                    Players.Update.update msg model.players
            in
                ( { model | players = updatedPlayers }, Cmd.map PlayersMsg cmd )
