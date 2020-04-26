-- @HelloSub/Data.hs
{-# LANGUAGE QuasiQuotes     #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies    #-}
module HelloSub.Data where

import           Yesod

-- Subsites have foundations just like master sites.
data HelloSub = HelloSub

-- We have a familiar analogue from mkYesod, with just one extra parameter.
-- We'll discuss that later.
mkYesodSubData "HelloSub" $(parseRoutesFile "config/sub_routes")
