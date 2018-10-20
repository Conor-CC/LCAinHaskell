{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_lca (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/bin"
libdir     = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/lib/x86_64-linux-ghc-8.4.3/lca-0.1.0.0-DHhJjVlEjOgDaFeoE9ID0Y"
dynlibdir  = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/lib/x86_64-linux-ghc-8.4.3"
datadir    = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/share/x86_64-linux-ghc-8.4.3/lca-0.1.0.0"
libexecdir = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/libexec/x86_64-linux-ghc-8.4.3/lca-0.1.0.0"
sysconfdir = "/home/conorclery/Desktop/Desktop/3rd Year/SoftwareEng/AssignmentOne/lca/.stack-work/install/x86_64-linux/lts-12.10/8.4.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "lca_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "lca_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "lca_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "lca_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "lca_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "lca_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
