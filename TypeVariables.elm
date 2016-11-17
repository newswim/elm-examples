module TypeVariables exposing (..)

import List
import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
    [ 1, 2, 3, 4, 5 ]

-- lowercase word inside of type signature tells Elm
-- that the type is going to be a variable
printThing : thing -> Html msg
printThing thing =
    ul [] [ text <| toString <| thing ]

fruits =
    [ { name = "Orange" }
    , { name = "Banana" }
    ]


main =
    ul []
        ( List.map printThing fruits)
