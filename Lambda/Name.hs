{- |
Module      :  Lambda.Name
Description :  Binding name.
Copyright   :  (c) Paweł Nowak
License     :  Apache v2.0

Maintainer  :  pawel834@gmail.com
Stability   :  experimental
Portability :  portable

-}

module Lambda.Name where

import Data.String
import Data.Text.Lazy (Text, pack)

-- Use a simple text for now.
newtype Name = Name Text
    deriving (Eq, Ord, Show, Read)

instance IsString Name where
    fromString = Name . pack

-- | A name that cannot occur in any program and is reserved for the compiler.
-- This is used eg. unnamed function parameters.
reservedName :: Name
reservedName = "\0"
