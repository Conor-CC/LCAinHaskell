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
<<<<<<< HEAD
<<<<<<< HEAD
    it "create tree node" $ do
      let t = treeNode 2
      (treeRoot t) `shouldBe` 2

    it "create tree from array" $ do
=======
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
    it "Create tree node" $ do
      let t = treeNode 2
      (treeRoot t) `shouldBe` 2

    it "Create tree from array and check height functionality" $ do
<<<<<<< HEAD
>>>>>>> a106a41... Last commit got corrupted due to unexpected shutdown. Last changes were: Repaired repo with git-repair, added in lca tests and buil lca algorithm in BStree.hs
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
      let t = treeFromList [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]
      (treeRoot t) `shouldBe` 7
      (treeHeight t) `shouldBe` 5
      (treeToList t) `shouldBe` [1, 3, 4, 5, 7, 9, 10, 11, 12, 14]
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm

  describe "Testing of LCA functionality" $ do
    it "Create tree from array and test generically with max and min vals as well as sample inputs" $ do
      let t = treeFromList [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]
      (mylca (treeMin t) (treeMax t) t) `shouldBe` 7
      (mylca (treeMin t) (treeMin t) t) `shouldBe` (treeMin t)
<<<<<<< HEAD
>>>>>>> a106a41... Last commit got corrupted due to unexpected shutdown. Last changes were: Repaired repo with git-repair, added in lca tests and buil lca algorithm in BStree.hs
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
