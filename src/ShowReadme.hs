{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowReadme where

import qualified GitHub.Endpoints.Repos.Contents as GERC
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possibleReadme <- GERC.readmeFor "jbrgfx" "elm-filtered-list"
  print possibleReadme
