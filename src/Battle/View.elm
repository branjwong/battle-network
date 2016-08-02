module Battle.View exposing (view)

import Html exposing (Html)
import Element

import Battle.Model exposing (Model)

view : Model -> Html msg
view model =
    let
        element = Element.show model
    in
        Element.toHtml element
