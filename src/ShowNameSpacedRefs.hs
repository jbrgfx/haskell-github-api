{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowNameSpacedRefs  where

import qualified GitHub.Endpoints.GitData.References as GEGR
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  -- reftags <- GEGR.namespacedReferences "phadej" "github" "tags"
  reftags <- GEGR.namespacedReferences "snoyberg" "conduit" "tags"
  print reftags
  -- returns the SHA objs by version to be used elsewhere
