module App exposing (..)

import Html exposing (..)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (..)


{-
    Elm Architecture consists of four parts

    1. model
            - a piece of data that represents the entire state of the app.
    2. Msg
            - a custom type; a constant for signifying changes
    3. update
            - a (pure) function;
            - takes two args
                - a message
                - a model
            - returns an updated copy of the model
    4. view
            - a function
            - takes a model
            - allows updating the view based on changes to the model
-}


model =
    { showFace = False }

type Msg =
    ShowFace


update msg model_ =
    case msg of
        ShowFace -> { model_ | showFace = True }


view model_ =
    div []
        [ h1 [] [ text "Face Generator" ]
        , button [ onClick ShowFace ] [ text "face me" ]
        , if model_.showFace
            then text "O__\\__O"
            else text ""
        ]


main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }
