{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowReadme where

import qualified GitHub.Endpoints.Activity.Watching as GEAW
import qualified GitHub.Data.Repos as GDR
import Prelude.Compat
import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)
import Data.Monoid       ((<>))

main = do
  possibleWatching <- GEAW.reposWatchedBy "jbrgfx"
  -- print possibleWatching
  T.putStrLn $ either (("Error: " <>) . pack . show)
                      (foldMap ((<> "\n") . formatRepoName))
                      possibleWatching

formatRepoName :: GEAW.Repo -> Text
formatRepoName = GEAW.untagName . GDR.repoName
