-- file Spec.hs
import Lib
import BStree
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do

  describe "returnPeriklesQuote" $ do
    it "returnPeriklesQuote: Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." $ do
      returnPeriklesQuote `shouldBe` ("Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." :: String)

  describe "Binary Tree functionality testing." $ do
    it "create tree node" $ do
      let t = treeNode 2
      (treeRoot t) `shouldBe` 2

    it "create tree from array" $ do
      let t = treeFromList [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]
      (treeRoot t) `shouldBe` 7
      (treeHeight t) `shouldBe` 5
      (treeToList t) `shouldBe` [1, 3, 4, 5, 7, 9, 10, 11, 12, 14]
