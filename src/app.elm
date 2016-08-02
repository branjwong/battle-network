module App exposing (main)

import Html.App
import Keyboard

import Battle.Model exposing (model, Model)
import Battle.Update exposing (update, Msg, keyToMsg)
import Battle.View exposing (view)

main =
    Html.App.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }

init =
    let
        location = (1,1)
    in
        (location, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions _ =
    Keyboard.downs keyToMsg
