-- We define a module definition and specify the functions that it exposes

module Main exposing (..)

-- We then pull in a library dependency that is capable of producing DOM nodes.

import Html exposing(text)

-- We define some functions, starting with type definitions

politely : String -> String
politely phrase =
    "Excuse me, " ++ phrase

ask : String -> String -> String
ask thing place =
    "is there "
        ++ thing
        ++ " in the "
        ++ place
        ++ "?"

askPolitelyAboutFish : String -> String
-- no parameters, this is called "point free" style
askPolitelyAboutFish = politely << (ask "fish")
-- a. the << character is for specifying function composition
-- b. functions with compatible inputs & outputs can be composed, since
--      all functions in elm are curried by default.

main =
    text
        -- "<|" is elm's "pipe operator"
        <| askPolitelyAboutFish "salad"
