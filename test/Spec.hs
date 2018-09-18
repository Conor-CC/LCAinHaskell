-- file Spec.hs
import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "returnTypedParam" $ do
    it "First given parameter should be returned." $ do
      (returnTypedParam 3) `shouldBe` (3 :: Int)
      (returnTypedParam "Sample Text") `shouldBe` ("Sample Text" :: String)
