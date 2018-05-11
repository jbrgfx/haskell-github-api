{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module GetFileContents where

import qualified GitHub.Endpoints.Repos.Contents as GERC
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possiblePackage <- GERC.contentsFor "jbrgfx" "elm-filtered-list" "elm-package.json" Nothing
  print possiblePackage
