module Players.Edit exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, value, href)
import Players.Models exposing (..)
import Players.Messages exposing (..)


view : Player -> Html.Html Msg
view model =
    div []
        [ nav
        , form model
        ]


nav : Html.Html Msg
nav =
    div [ class "clearfix mb2 white bg-black p1" ] []


form : Player -> Html.Html Msg
form player =
    div [ class "m3" ]
        [ h1 [] [ text player.name ]
        , formLevel player
        ]


formLevel : Player -> Html.Html Msg
formLevel player =
    div [ class "clearfix py1" ]
        [ div [ class "col col-5" ] [ text "Level" ]
        , div [ class "col col-7" ]
            [ span [ class "h2 bold" ] [ text (toString player.level) ]
            , btnLevelDecrease
            , btnLevelIncrease
            ]
        ]


btnLevelDecrease : Html.Html Msg
btnLevelDecrease =
    a [ class "btn ml1 h1" ] [ i [ class "fa fa-minus-circle" ] [] ]


btnLevelIncrease : Html.Html Msg
btnLevelIncrease =
    a [ class "btn ml1 h1" ] [ i [ class "fa fa-plus-circle" ] [] ]
