module RenderDOM exposing (..)

import List
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Ship =
    { name : String
    , model : String
    , cost : Int
    }


ships =
    [ { name = "X-Wing", cost = 1230000 }
    , { name = "Millenium Falcon", cost = 1000000000 }
    , { name = "Death Star", cost = 40000000000000000 }
    ]


renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b []
            [ text <| toString <| ship.cost ]

        ]

renderShips ships =
    -- div is an Elm function which takes two arguments
    -- 1. its own Attributes []
    -- 2. children []
    div
        [ style
            [ ( "font-family", "fantasy" )
            , ( "padding", "1em" )
            ]
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] ( List.map renderShip ships )
        ]


main =
    renderShips ships
