{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import qualified GitHub as GH

main :: IO ()
main = do
    githubUser <- GH.executeRequest' $ GH.userInfoForR "jbrgfx"
    print githubUser
