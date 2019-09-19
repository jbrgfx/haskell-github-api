{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowIssuesLabels  where

import qualified GitHub.Endpoints.Issues.Labels as GEIL
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possibleIssues <- GEIL.labelsOnRepo "phadej" "github"
  print possibleIssues
