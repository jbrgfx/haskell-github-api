{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module ShowStarredByMe where

import qualified GitHub.Endpoints.Activity.Starring as GEAS
import qualified GitHub.Data.Repos as GDR
import Prelude.Compat
import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)
import Data.Monoid       ((<>))

main = do
  possibleStars <- GEAS.reposStarredBy Nothing "jbrgfx"
  -- print possibleStars
  T.putStrLn $ either (("Error: " <>) . pack . show)
                      (foldMap ((<> "\n") . formatRepoName))
                      possibleStars

formatRepoName :: GEAS.Repo -> Text
formatRepoName = GEAS.untagName . GDR.repoName
