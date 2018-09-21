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

  describe "returnPeriklesQuote" $ do
    it "Perikles Quote should be returned: Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." $ do
      returnPeriklesQuote `shouldBe` ("Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." :: String)
