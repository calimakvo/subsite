-- @HelloSub.hs
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
module HelloSub
    ( module HelloSub.Data
    , module HelloSub
    ) where

import           HelloSub.Data
import           Yesod
    
-- And we'll spell out the handler type signature.
getSubHomeR :: Yesod master => SubHandlerFor HelloSub master Html
getSubHomeR = liftHandler $ defaultLayout [whamlet|Welcome to the subsite!|]

instance Yesod master => YesodSubDispatch HelloSub master where
    yesodSubDispatch = $(mkYesodSubDispatch resourcesHelloSub)
