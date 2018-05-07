{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowRefs where

import qualified GitHub.Endpoints.Repos.Releases as GERR
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possibleReleases <- GERR.latestRelease "phadej" "github"
  print possibleReleases
  -- always 404 ???
