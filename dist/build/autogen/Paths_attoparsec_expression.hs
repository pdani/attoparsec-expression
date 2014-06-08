module Paths_attoparsec_expression (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/pdani/.cabal/bin"
libdir     = "/Users/pdani/.cabal/lib/x86_64-osx-ghc-7.8.2/attoparsec-expression-0.1"
datadir    = "/Users/pdani/.cabal/share/x86_64-osx-ghc-7.8.2/attoparsec-expression-0.1"
libexecdir = "/Users/pdani/.cabal/libexec"
sysconfdir = "/Users/pdani/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "attoparsec_expression_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "attoparsec_expression_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "attoparsec_expression_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "attoparsec_expression_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "attoparsec_expression_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
