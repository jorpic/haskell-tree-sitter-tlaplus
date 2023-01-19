{-# LANGUAGE Unsafe #-}
module TreeSitter.TlaPlus
  ( tree_sitter_tlaplus
  , language
  , getNodeTypesPath
  , getTestCorpusDir
  ) where

import Foreign.Ptr
import TreeSitter.Language
import Paths_tree_sitter_tlaplus

foreign import ccall
  unsafe "vendor/src/parser.c tree_sitter_tlaplus" tree_sitter_tlaplus
  :: Ptr Language

language :: Ptr Language
language = tree_sitter_tlaplus

getNodeTypesPath :: IO FilePath
getNodeTypesPath = getDataFileName "vendor/src/node-types.json"

getTestCorpusDir :: IO FilePath
getTestCorpusDir = getDataFileName "vendor/test/corpus"
