{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module GetUserInfo where

import qualified GitHub.Endpoints.Users as GEU
import Prelude.Compat

main = do
  possibleInfo <- GEU.userInfoFor "jbrgfx"
  print possibleInfo
