{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module IdentifyReadme where

import qualified GitHub.Endpoints.Repos.Contents as GERC
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possibleRepo <- GERC.readmeFor "jbrgfx" "elm-filtered-list"
  print possibleRepo
  -- base64 encoded
