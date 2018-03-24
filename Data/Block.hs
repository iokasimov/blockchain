{-# LANGUAGE ExistentialQuantification #-}

module Data.Block (Block (..)) where

import Crypto.Hash (Digest (..))

data Block = forall msg dgst sig t. Traversable t =>
    Block (t msg) (Digest dgst) (Maybe sig)
