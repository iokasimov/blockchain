module Data.Chain (Chain (..), Blockchain) where

import Control.Comonad.Cofree (Cofree (..))

import Data.Block (Block)

data Chain a = Genesis | Next a

type Blockchain = Cofree Chain Block
