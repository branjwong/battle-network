module Battle.Update exposing (update, Msg, keyToMsg)

import Battle.Model exposing (Model)
import Keyboard exposing (KeyCode)

type Msg
    = Move Direction
    | NoOp

type Direction
    = Up
    | Down
    | Left
    | Right

keyToMsg : KeyCode -> Msg
keyToMsg keyCode =
    case keyCode of
        40 -> Move Down
        38 -> Move Up
        37 -> Move Left
        39 -> Move Right
        _  -> NoOp

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    let
        (x,y) = model
        model' =
            case msg of
                Move Down -> (x, Basics.max (y-1) 0)
                Move Up -> (x, Basics.min (y+1) 2)
                Move Left -> (Basics.max (x-1) 0, y)
                Move Right -> (Basics.min (x+1) 2, y)
                NoOp -> (x,y)
    in
        (model', Cmd.none)
