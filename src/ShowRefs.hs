{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowRefs where

import qualified GitHub.Endpoints.GitData.References as GEGR
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  refs <- GEGR.reference "phadej" "github" "heads/master"
  print refs
  -- returns the SHA obj ref to be used elsewhere
