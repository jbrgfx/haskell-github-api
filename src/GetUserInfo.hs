{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module GetUserInfo where

import qualified GitHub.Endpoints.Users as GEU
import Prelude.Compat

import Data.Text         (Text, pack)
import Data.Text.IO as T (putStrLn)

main = do
  possibleInfo <- GEU.userInfoFor "jbrgfx"
  print possibleInfo
