-- file Spec.hs
import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "printText" $ do
    it "prints the right stuff" $ do
      printText `shouldBe` (3 :: Int)
