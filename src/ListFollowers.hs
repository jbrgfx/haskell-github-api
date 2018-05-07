{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ListFollowers where

import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)
import Data.Monoid       ((<>))

import qualified GitHub.Endpoints.Users.Followers as GitHub

main :: IO ()
main = do
    possibleUsers <- GitHub.usersFollowing "phadej"
    T.putStrLn $ either (("Error: " <>) . pack . show)
                        (foldMap ((<> "\n") . formatUser))
                        possibleUsers

formatUser :: GitHub.SimpleUser -> Text
formatUser = GitHub.untagName . GitHub.simpleUserLogin
