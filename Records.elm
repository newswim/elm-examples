module Records exposing (..)

import Html exposing (text)

-- giving a new name to a type
type alias Dog =
    { name : String
    , age : Int
    }

dog =
    { name = "Spot"
    , age = 3
    }

renderDog : Dog -> String
renderDog dog =
    dog.name ++ ", " ++ (toString dog.age)

main =
    -- text <| dog.name
    -- text <| .name dog             -- use a property accesor before the record
    -- text <| toString <| .age dog  -- toString is a global function for casting
    text <| renderDog dog
