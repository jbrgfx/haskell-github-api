{-# LANGUAGE OverloadedStrings #-}
module SearchRepos where

import qualified GitHub.Endpoints.Search as Github
import qualified GitHub.Data as Github
import qualified GitHub.Data.Search as Github
import Control.Monad (forM,forM_)
import Data.Maybe (fromMaybe)
import Data.List (intercalate)

main = do
  let query = "stylish-elephants+user:jbrgfx"
  let auth = Nothing
  result <- Github.searchRepos' auth query
  print result
