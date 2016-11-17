{- Hello! This Elm program contains examples of:

    - Maybe, Any (_), Nothing
    - List.foldl, List.map
    - pattern matching (if/then)

-}

module Strings exposing (..)

import Html exposing (text)
import List
-- since we're using List.map


type alias Person =
    { name : String
    , age  : Int
    }

people : List Person
people =
    [ { name = "Richard Gere", age = 68 }
    , { name = "Bolten Renly", age = 23 }
    ]

names : List Person -> List String
names peeps =
    List.map (\peep -> peep.name) peeps

findPerson : String -> List Person -> Maybe Person
findPerson name peeps =
    List.foldl
        (\peep memo ->
            case memo of
                Just _ ->
                    memo
                Nothing ->
                    if peep.name == name then
                        Just peep
                    else
                        Nothing
        )
        Nothing
        peeps

main : Html.Html a
main =
    -- text <| toString <| names peeps
    text <| toString <| findPerson "Richard Gere" people
